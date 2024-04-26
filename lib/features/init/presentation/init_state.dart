import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_state.freezed.dart';
part 'init_state.g.dart';

@freezed
class InitState with _$InitState {
  const factory InitState({
    required bool isLoggedIn,
  }) = _InitState;

  factory InitState.fromJson(Map<String, dynamic> json) =>
      _$InitStateFromJson(json);
}
