// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Photo$Impl _$$Photo$ImplFromJson(Map<String, dynamic> json) => _$Photo$Impl(
      id: json['id'] as String,
      description: json['alt_description'] as String? ?? '',
      urls: Url.fromJson(json['urls'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Photo$ImplToJson(_$Photo$Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alt_description': instance.description,
      'urls': instance.urls,
      'user': instance.user,
    };
