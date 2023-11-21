import 'package:dermoscan/src/repository/authentication_repository/authentication_repository.dart';
import 'package:dermoscan/src/repository/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final userRepo = Get.put(UserRepository());

class LogInController extends GetxController {
  static LogInController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  // Function to log in
  void logInUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .loginUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
        margin: const EdgeInsets.all(10),
      ));
    }
  }

  // Reset password
  Future resetPassword(String email) async {
    AuthenticationRepository.instance.passwordResetWithEmail(email);
  }
}
