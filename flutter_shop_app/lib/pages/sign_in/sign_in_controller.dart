import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop_app/common/entities/user.dart';
import 'package:flutter_shop_app/common/utils/global_loader/global_loader.dart';
import 'package:flutter_shop_app/pages/sign_in/notifier/sign_in_notifier.dart';

import '../../common/widgets/popup_messages.dart';

class SignInController {
  WidgetRef ref;

  SignInController(this.ref);

  Future<void> handleSignIn() async {
    var state = ref.read(signInNotifierProvider);

    String email = state.email;
    String password = state.password;

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (state.password.length < 6) {
      toastInfo("Your password should be at least 6 characters");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    print('0');
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (credential.user == null) {
        toastInfo("User not found");
      }

      if (!credential.user!.emailVerified) {
        toastInfo("You must verify your email address first!");
      }
      var user = credential.user;
      print('1');
      if (user != null) {
        String? displayName = user.displayName;
        String? email = user.email;
        String? id = user.uid;
        String? photoUrl = user.photoURL;

        LoginRequestEntity loginRequestEntity = LoginRequestEntity();
        loginRequestEntity.avatar = photoUrl;
        loginRequestEntity.name = displayName;
        loginRequestEntity.email = email;
        loginRequestEntity.open_id = id;
        loginRequestEntity.type = 1;
        asyncPostAllData(loginRequestEntity);
        print('2');
        print("user logged in");
      } else {
        toastInfo("login error");
      }
    } catch (e) {
      print('5');
    }
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
    print('4');
  }

  void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
