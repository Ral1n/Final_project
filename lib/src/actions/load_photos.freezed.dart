// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadPhotos {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query, String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadPhotosStart value) $default, {
    required TResult Function(LoadPhotosSuccessful value) successful,
    required TResult Function(LoadPhotosError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadPhotosStart value)? $default, {
    TResult? Function(LoadPhotosSuccessful value)? successful,
    TResult? Function(LoadPhotosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadPhotosStart value)? $default, {
    TResult Function(LoadPhotosSuccessful value)? successful,
    TResult Function(LoadPhotosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadPhotosCopyWith<$Res> {
  factory $LoadPhotosCopyWith(LoadPhotos value, $Res Function(LoadPhotos) then) =
      _$LoadPhotosCopyWithImpl<$Res, LoadPhotos>;
}

/// @nodoc
class _$LoadPhotosCopyWithImpl<$Res, $Val extends LoadPhotos> implements $LoadPhotosCopyWith<$Res> {
  _$LoadPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPhotosStartImplCopyWith<$Res> {
  factory _$$LoadPhotosStartImplCopyWith(_$LoadPhotosStartImpl value, $Res Function(_$LoadPhotosStartImpl) then) =
      __$$LoadPhotosStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String color});
}

/// @nodoc
class __$$LoadPhotosStartImplCopyWithImpl<$Res> extends _$LoadPhotosCopyWithImpl<$Res, _$LoadPhotosStartImpl>
    implements _$$LoadPhotosStartImplCopyWith<$Res> {
  __$$LoadPhotosStartImplCopyWithImpl(_$LoadPhotosStartImpl _value, $Res Function(_$LoadPhotosStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? color = null,
  }) {
    return _then(_$LoadPhotosStartImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadPhotosStartImpl implements LoadPhotosStart {
  const _$LoadPhotosStartImpl({this.query = '', this.color = ''});

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final String color;

  @override
  String toString() {
    return 'LoadPhotos(query: $query, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPhotosStartImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPhotosStartImplCopyWith<_$LoadPhotosStartImpl> get copyWith =>
      __$$LoadPhotosStartImplCopyWithImpl<_$LoadPhotosStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(query, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query, String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(query, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(query, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadPhotosStart value) $default, {
    required TResult Function(LoadPhotosSuccessful value) successful,
    required TResult Function(LoadPhotosError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadPhotosStart value)? $default, {
    TResult? Function(LoadPhotosSuccessful value)? successful,
    TResult? Function(LoadPhotosError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadPhotosStart value)? $default, {
    TResult Function(LoadPhotosSuccessful value)? successful,
    TResult Function(LoadPhotosError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoadPhotosStart implements LoadPhotos {
  const factory LoadPhotosStart({final String query, final String color}) = _$LoadPhotosStartImpl;

  String get query;
  String get color;
  @JsonKey(ignore: true)
  _$$LoadPhotosStartImplCopyWith<_$LoadPhotosStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPhotosSuccessfulImplCopyWith<$Res> {
  factory _$$LoadPhotosSuccessfulImplCopyWith(
          _$LoadPhotosSuccessfulImpl value, $Res Function(_$LoadPhotosSuccessfulImpl) then) =
      __$$LoadPhotosSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$$LoadPhotosSuccessfulImplCopyWithImpl<$Res> extends _$LoadPhotosCopyWithImpl<$Res, _$LoadPhotosSuccessfulImpl>
    implements _$$LoadPhotosSuccessfulImplCopyWith<$Res> {
  __$$LoadPhotosSuccessfulImplCopyWithImpl(
      _$LoadPhotosSuccessfulImpl _value, $Res Function(_$LoadPhotosSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$LoadPhotosSuccessfulImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$LoadPhotosSuccessfulImpl implements LoadPhotosSuccessful {
  const _$LoadPhotosSuccessfulImpl(final List<Photo> photos) : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'LoadPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPhotosSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPhotosSuccessfulImplCopyWith<_$LoadPhotosSuccessfulImpl> get copyWith =>
      __$$LoadPhotosSuccessfulImplCopyWithImpl<_$LoadPhotosSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query, String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadPhotosStart value) $default, {
    required TResult Function(LoadPhotosSuccessful value) successful,
    required TResult Function(LoadPhotosError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadPhotosStart value)? $default, {
    TResult? Function(LoadPhotosSuccessful value)? successful,
    TResult? Function(LoadPhotosError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadPhotosStart value)? $default, {
    TResult Function(LoadPhotosSuccessful value)? successful,
    TResult Function(LoadPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoadPhotosSuccessful implements LoadPhotos {
  const factory LoadPhotosSuccessful(final List<Photo> photos) = _$LoadPhotosSuccessfulImpl;

  List<Photo> get photos;
  @JsonKey(ignore: true)
  _$$LoadPhotosSuccessfulImplCopyWith<_$LoadPhotosSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPhotosErrorImplCopyWith<$Res> {
  factory _$$LoadPhotosErrorImplCopyWith(_$LoadPhotosErrorImpl value, $Res Function(_$LoadPhotosErrorImpl) then) =
      __$$LoadPhotosErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoadPhotosErrorImplCopyWithImpl<$Res> extends _$LoadPhotosCopyWithImpl<$Res, _$LoadPhotosErrorImpl>
    implements _$$LoadPhotosErrorImplCopyWith<$Res> {
  __$$LoadPhotosErrorImplCopyWithImpl(_$LoadPhotosErrorImpl _value, $Res Function(_$LoadPhotosErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoadPhotosErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoadPhotosErrorImpl implements LoadPhotosError {
  const _$LoadPhotosErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'LoadPhotos.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPhotosErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPhotosErrorImplCopyWith<_$LoadPhotosErrorImpl> get copyWith =>
      __$$LoadPhotosErrorImplCopyWithImpl<_$LoadPhotosErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query, String color) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query, String color)? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query, String color)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoadPhotosStart value) $default, {
    required TResult Function(LoadPhotosSuccessful value) successful,
    required TResult Function(LoadPhotosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoadPhotosStart value)? $default, {
    TResult? Function(LoadPhotosSuccessful value)? successful,
    TResult? Function(LoadPhotosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoadPhotosStart value)? $default, {
    TResult Function(LoadPhotosSuccessful value)? successful,
    TResult Function(LoadPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadPhotosError implements LoadPhotos, ErrorAction {
  const factory LoadPhotosError(final Object error, final StackTrace stackTrace) = _$LoadPhotosErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoadPhotosErrorImplCopyWith<_$LoadPhotosErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
