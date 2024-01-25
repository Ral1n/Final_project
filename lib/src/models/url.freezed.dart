// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Url _$UrlFromJson(Map<String, dynamic> json) {
  return Url$.fromJson(json);
}

/// @nodoc
mixin _$Url {
  String get regular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res, Url>;
  @useResult
  $Res call({String regular});
}

/// @nodoc
class _$UrlCopyWithImpl<$Res, $Val extends Url> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regular = null,
  }) {
    return _then(_value.copyWith(
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Url$ImplCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$$Url$ImplCopyWith(
          _$Url$Impl value, $Res Function(_$Url$Impl) then) =
      __$$Url$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String regular});
}

/// @nodoc
class __$$Url$ImplCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res, _$Url$Impl>
    implements _$$Url$ImplCopyWith<$Res> {
  __$$Url$ImplCopyWithImpl(_$Url$Impl _value, $Res Function(_$Url$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regular = null,
  }) {
    return _then(_$Url$Impl(
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Url$Impl implements Url$ {
  const _$Url$Impl({required this.regular});

  factory _$Url$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Url$ImplFromJson(json);

  @override
  final String regular;

  @override
  String toString() {
    return 'Url(regular: $regular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Url$Impl &&
            (identical(other.regular, regular) || other.regular == regular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, regular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Url$ImplCopyWith<_$Url$Impl> get copyWith =>
      __$$Url$ImplCopyWithImpl<_$Url$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Url$ImplToJson(
      this,
    );
  }
}

abstract class Url$ implements Url {
  const factory Url$({required final String regular}) = _$Url$Impl;

  factory Url$.fromJson(Map<String, dynamic> json) = _$Url$Impl.fromJson;

  @override
  String get regular;
  @override
  @JsonKey(ignore: true)
  _$$Url$ImplCopyWith<_$Url$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
