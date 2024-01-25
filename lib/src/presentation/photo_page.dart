import 'package:flutter/material.dart';

import '../actions/create_review.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import '../models/review.dart';
import 'containers/reviews_container.dart';
import 'containers/selected_photo_container.dart';
import 'containers/users_container.dart';
import 'extensions.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedMovieContainer(
      builder: (BuildContext context, Photo photo) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
          appBar: AppBar(
            backgroundColor: Colors.white12,
            title: const Text(
              'Photo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: ReviewsContainer(
            builder: (BuildContext context, List<Review> reviews) {
              return UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> users) {
                  return CustomScrollView(
                    slivers: <Widget>[
                      SliverToBoxAdapter(
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: SizedBox(
                                height: 500,
                                child: AspectRatio(
                                  aspectRatio: 0.69,
                                  child: Image.network(
                                    photo.urls.regular,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Center(
                              child: Column(
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      children: <InlineSpan>[
                                        const TextSpan(
                                          text: 'Description: ',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: photo.description,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  RichText(
                                    text: TextSpan(
                                      children: <InlineSpan>[
                                        const TextSpan(
                                          text: 'By: ',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                          '${photo.user.realName} ( Instagram: ${photo.user.instagram} or Twitter: ${photo.user.twitter} )',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            'Reviews',
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ),
                      ),
                      if (reviews.isNotEmpty)
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final Review review = reviews[index];
                              final AppUser? user = users[review.uid];

                              return ListTile(
                                title: Text(review.text),
                                subtitle: Text(<Object>[
                                  if (user != null) user.displayName,
                                  review.createdAt,
                                ].join('\n')),
                              );
                            },
                            childCount: reviews.length,
                          ),
                        )
                      else
                        const SliverFillRemaining(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Be the first to leave a review',
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                    ],
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final TextEditingController controller = TextEditingController();
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add your review'),
                    content: TextField(
                      controller: controller,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final String text = controller.text.trim();
                          if (text.isNotEmpty) {
                            context.dispatch(CreateReview(text));
                          }
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add_comment),
          ),
        );
      },
    );
  }
}
