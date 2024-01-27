// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_selected_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetSelectedPhoto {
  Photo get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedPhotoCopyWith<SetSelectedPhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhotoCopyWith(SetSelectedPhoto value, $Res Function(SetSelectedPhoto) then) =
      _$SetSelectedPhotoCopyWithImpl<$Res, SetSelectedPhoto>;
  @useResult
  $Res call({Photo photo});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$SetSelectedPhotoCopyWithImpl<$Res, $Val extends SetSelectedPhoto> implements $SetSelectedPhotoCopyWith<$Res> {
  _$SetSelectedPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedPhoto$ImplCopyWith<$Res> implements $SetSelectedPhotoCopyWith<$Res> {
  factory _$$SetSelectedPhoto$ImplCopyWith(_$SetSelectedPhoto$Impl value, $Res Function(_$SetSelectedPhoto$Impl) then) =
      __$$SetSelectedPhoto$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Photo photo});

  @override
  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$SetSelectedPhoto$ImplCopyWithImpl<$Res> extends _$SetSelectedPhotoCopyWithImpl<$Res, _$SetSelectedPhoto$Impl>
    implements _$$SetSelectedPhoto$ImplCopyWith<$Res> {
  __$$SetSelectedPhoto$ImplCopyWithImpl(_$SetSelectedPhoto$Impl _value, $Res Function(_$SetSelectedPhoto$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$SetSelectedPhoto$Impl(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
    ));
  }
}

/// @nodoc

class _$SetSelectedPhoto$Impl implements SetSelectedPhoto$ {
  const _$SetSelectedPhoto$Impl(this.photo);

  @override
  final Photo photo;

  @override
  String toString() {
    return 'SetSelectedPhoto(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedPhoto$Impl &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedPhoto$ImplCopyWith<_$SetSelectedPhoto$Impl> get copyWith =>
      __$$SetSelectedPhoto$ImplCopyWithImpl<_$SetSelectedPhoto$Impl>(this, _$identity);
}

abstract class SetSelectedPhoto$ implements SetSelectedPhoto {
  const factory SetSelectedPhoto$(final Photo photo) = _$SetSelectedPhoto$Impl;

  @override
  Photo get photo;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedPhoto$ImplCopyWith<_$SetSelectedPhoto$Impl> get copyWith => throw _privateConstructorUsedError;
}
