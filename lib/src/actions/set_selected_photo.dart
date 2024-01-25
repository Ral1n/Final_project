import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/photo.dart';
import 'app_action.dart';

part 'set_selected_photo.freezed.dart';

@freezed
class SetSelectedPhoto with _$SetSelectedPhoto implements AppAction {
  const factory SetSelectedPhoto(Photo photo) = SetSelectedPhoto$;
}
