// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'username')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get realName => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagram => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'name') String? realName,
      @JsonKey(name: 'instagram_username') String? instagram,
      @JsonKey(name: 'twitter_username') String? twitter});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? realName = freezed,
    Object? instagram = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$User$ImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$ImplCopyWith(
          _$User$Impl value, $Res Function(_$User$Impl) then) =
      __$$User$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'name') String? realName,
      @JsonKey(name: 'instagram_username') String? instagram,
      @JsonKey(name: 'twitter_username') String? twitter});
}

/// @nodoc
class __$$User$ImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$User$Impl>
    implements _$$User$ImplCopyWith<$Res> {
  __$$User$ImplCopyWithImpl(
      _$User$Impl _value, $Res Function(_$User$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? realName = freezed,
    Object? instagram = freezed,
    Object? twitter = freezed,
  }) {
    return _then(_$User$Impl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      instagram: freezed == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$Impl implements User$ {
  const _$User$Impl(
      {@JsonKey(name: 'username') required this.userName,
      @JsonKey(name: 'name') required this.realName,
      @JsonKey(name: 'instagram_username') required this.instagram,
      @JsonKey(name: 'twitter_username') required this.twitter});

  factory _$User$Impl.fromJson(Map<String, dynamic> json) =>
      _$$User$ImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String? userName;
  @override
  @JsonKey(name: 'name')
  final String? realName;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagram;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitter;

  @override
  String toString() {
    return 'User(userName: $userName, realName: $realName, instagram: $instagram, twitter: $twitter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$Impl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.twitter, twitter) || other.twitter == twitter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, realName, instagram, twitter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$ImplCopyWith<_$User$Impl> get copyWith =>
      __$$User$ImplCopyWithImpl<_$User$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ImplToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
          {@JsonKey(name: 'username') required final String? userName,
          @JsonKey(name: 'name') required final String? realName,
          @JsonKey(name: 'instagram_username') required final String? instagram,
          @JsonKey(name: 'twitter_username') required final String? twitter}) =
      _$User$Impl;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$Impl.fromJson;

  @override
  @JsonKey(name: 'username')
  String? get userName;
  @override
  @JsonKey(name: 'name')
  String? get realName;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagram;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitter;
  @override
  @JsonKey(ignore: true)
  _$$User$ImplCopyWith<_$User$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
