import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/photo.dart';
import 'app_action.dart';

part 'load_photos.freezed.dart';

@freezed
class LoadPhotos with _$LoadPhotos implements AppAction {
  const factory LoadPhotos({@Default('') String query, @Default('') String color}) = LoadPhotosStart;

  const factory LoadPhotos.successful(List<Photo> photos) = LoadPhotosSuccessful;

  @Implements<ErrorAction>()
  const factory LoadPhotos.error(Object error, StackTrace stackTrace) = LoadPhotosError;
}
