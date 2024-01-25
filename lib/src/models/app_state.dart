import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_user.dart';
import 'photo.dart';
import 'review.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    Photo? selectedPhoto,
    @Default(<Review>[]) List<Review> reviews,
    @Default(<Photo>[]) List<Photo> photos,
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    @Default(false) bool isLoading,
    @Default(1) int page,
    @Default('') String color,
    @Default('nature') String query,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
