import 'package:auth_ref/src/features/authentication/repository/exception/signup_email_password.dart';
import 'package:auth_ref/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:auth_ref/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:auth_ref/src/features/finance_manager/widgets/bottomnavigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Bottom());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Bottom())
          : Get.offAll(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      if (kDebugMode) {
        print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      }
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      if (kDebugMode) {
        print('EXCEPTION - ${ex.message}');
      }
      throw ex;
    }
  }

  // Future<void> loginUserWithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     _auth.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //   } catch (_) {}
  // }

  Future<void> logout() async => await _auth.signOut();
}
