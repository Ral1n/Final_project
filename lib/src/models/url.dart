import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';

part 'url.g.dart';

@freezed
class Url with _$Url {
  const factory Url({required String regular}) = Url$;

  factory Url.fromJson(Map<dynamic, dynamic> json) => _$UrlFromJson(Map<String, dynamic>.from(json));
}
