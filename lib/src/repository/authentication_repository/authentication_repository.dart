import 'package:dermoscan/src/common_widgets/custom_snack_bar.dart';
import 'package:dermoscan/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:dermoscan/src/features/core/screens/home/home_screen.dart';
import 'package:dermoscan/src/repository/authentication_repository/exceptions/sign_in_email_password_failure.dart';
import 'package:dermoscan/src/repository/authentication_repository/exceptions/sign_up_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  // Setting initial screen onLoad
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const HomeScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      CustomSnackBar.show("Advertencia", ex.message, Colors.orange);
      print('FIREBASE AUTH EXCEPTION - ${e.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      CustomSnackBar.show("Error", ex.message, Colors.red);
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const HomeScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignInWithEmailAndPasswordFailure.code(e.code);
      CustomSnackBar.show("Advertencia", ex.message, Colors.orange);
      print('FIREBASE AUTH EXCEPTION - ${e.message}');
      throw ex;
    } catch (_) {
      const ex = SignInWithEmailAndPasswordFailure();
      CustomSnackBar.show("Error", ex.message, Colors.red);
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> passwordResetWithEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      CustomSnackBar.show("¡Enlace enviado!", "Se ha enviado un enlace a tu correo electrónico para restablecer tu contraseña.", Colors.green);
    } on FirebaseAuthException catch (e) {
      CustomSnackBar.show("Error", e.message.toString(), Colors.red);
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
