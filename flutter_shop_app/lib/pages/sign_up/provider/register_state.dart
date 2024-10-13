import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required String userName,
    required String email,
    required String password,
    required String rePassword,
  }) = _RegisterState;
}
