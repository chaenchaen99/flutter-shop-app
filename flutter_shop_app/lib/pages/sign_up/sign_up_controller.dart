import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop_app/common/utils/global_loader/global_loader.dart';
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

    if (state.password.length < 6 || state.rePassword.length < 6) {
      toastInfo("Your password should be at least 6 characters");
      return;
    }

    if ((state.password != state.rePassword) || password != rePassword) {
      toastInfo("Your password did not match");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    Future.delayed(
        const Duration(
          seconds: 3,
        ), () async {
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
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          toastInfo("This password is too weak");
        } else if (e.code == 'email-already-in-use') {
          toastInfo("This email address has already been registered");
        } else if (e.code == 'user-not-found') {
          toastInfo("User not found");
        }
      } catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
      }

      //show the register page
      ref.watch(appLoaderProvider.notifier).setLoaderValue(false);
    });
  }
}
