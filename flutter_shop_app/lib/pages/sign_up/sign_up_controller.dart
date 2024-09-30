import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop_app/common/widgets/popup_messages.dart';
import 'package:flutter_shop_app/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo("Your name is empty");
      return;
    }

    if (state.userName.length < 3 || name.length < 3) {
      toastInfo("Your name is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if ((state.password != state.rePassword) || password != rePassword) {
      toastInfo("Your password did not match");
      return;
    }

    var context = Navigator.of(ref.context);

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (kDebugMode) {
        print(credential);
      }

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);

        //get server photo url
        //set user photo url
        toastInfo(
            "Asn email has been to verify your account. Please open that email and confirm this.");
        context.pop();
      }
    } catch (e) {}
  }
}
