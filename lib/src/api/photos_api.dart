import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

import '../models/photo.dart';
import '../models/review.dart';

class PhotosApi {
  PhotosApi(this._accessKey, this._client, this._firestore);

  final String _accessKey;
  final Client _client;
  final FirebaseFirestore _firestore;

  Future<List<Photo>> loadPhotos(int page, {String query = '', String color = ''}) async {
    final Response response = await _client.get(
        Uri.parse('https://api.unsplash.com/search/photos/').replace(
          queryParameters: <String, String>{
            'query': query,
            'page': '$page',
            if (color.isNotEmpty) 'color': color,
          },
        ),
        headers: <String, String>{
          'Authorization': 'Client-ID $_accessKey',
        });

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final List<Map<String, dynamic>> results =
        List<Map<String, dynamic>>.from((body['results'] ?? <String>[]) as List<dynamic>);
    return results.map((Map<String, dynamic> item) => Photo.fromJson(item)).toList();
  }

  Future<List<Review>> getReviews(int photoId) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
        .collection('photos/$photoId/reviews') //
        .orderBy('createdAt', descending: true)
        .get();

    return snapshot.docs //
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Review.fromJson(doc.data()))
        .toList();
  }

  Future<Review> createReview({
    required String photoId,
    required String text,
    required String uid,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('photos/$photoId/reviews').doc();

    final Review review = Review(
      id: ref.id,
      text: text,
      uid: uid,
      createdAt: DateTime.now(),
    );

    await ref.set(review.toJson());

    return review;
  }
}
