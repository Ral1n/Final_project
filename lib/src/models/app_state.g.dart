// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedPhoto: json['selectedPhoto'] == null
          ? null
          : Photo.fromJson(json['selectedPhoto'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Review>[],
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Photo>[],
      users: (json['users'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, AppUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, AppUser>{},
      isLoading: json['isLoading'] as bool? ?? false,
      page: json['page'] as int? ?? 1,
      color: json['color'] as String? ?? '',
      query: json['query'] as String? ?? 'nature',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'selectedPhoto': instance.selectedPhoto,
      'reviews': instance.reviews,
      'photos': instance.photos,
      'users': instance.users,
      'isLoading': instance.isLoading,
      'page': instance.page,
      'color': instance.color,
      'query': instance.query,
    };
