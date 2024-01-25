// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$User$Impl _$$User$ImplFromJson(Map<String, dynamic> json) => _$User$Impl(
      userName: json['username'] as String?,
      realName: json['name'] as String?,
      instagram: json['instagram_username'] as String?,
      twitter: json['twitter_username'] as String?,
    );

Map<String, dynamic> _$$User$ImplToJson(_$User$Impl instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'name': instance.realName,
      'instagram_username': instance.instagram,
      'twitter_username': instance.twitter,
    };
