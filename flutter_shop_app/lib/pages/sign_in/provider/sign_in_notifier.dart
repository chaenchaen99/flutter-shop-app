import 'package:flutter_shop_app/pages/sign_in/provider/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_notifier.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() {
    return const SignInState(email: '', password: '');
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordChange(String password) {
    state = state.copyWith(password: password);
  }
}
