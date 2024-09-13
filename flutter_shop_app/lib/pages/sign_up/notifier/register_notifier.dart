import 'package:flutter_shop_app/pages/sign_up/notifier/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return const RegisterState(
      userName: '',
      email: '',
      password: '',
      rePassword: '',
    );
  }
}
