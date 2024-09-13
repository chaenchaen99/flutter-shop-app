import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop_app/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    print("your name is $name");
    print("your email is $email");
    print("your password is $password");
    print("your rePassword is $rePassword");

    if (state.password != state.rePassword) {
      print("your password does not match");
    }
  }
}
