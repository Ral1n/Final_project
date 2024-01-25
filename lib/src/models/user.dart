import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'username') required String? userName,
    @JsonKey(name: 'name') required String? realName,
    @JsonKey(name: 'instagram_username') required String? instagram,
    @JsonKey(name: 'twitter_username') required String? twitter,
  }) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}
