import 'package:freezed_annotation/freezed_annotation.dart';
import 'url.dart';
import 'user.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required String id,
    @JsonKey(name: 'alt_description') @Default('') String description,
    required Url urls,
    required User user,
  }) = Photo$;

  factory Photo.fromJson(Map<dynamic, dynamic> json) => _$PhotoFromJson(Map<String, dynamic>.from(json));
}
