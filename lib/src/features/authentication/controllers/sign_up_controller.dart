import 'package:dermoscan/src/features/authentication/models/user_model.dart';
import 'package:dermoscan/src/features/core/screens/home/home_screen.dart';
import 'package:dermoscan/src/repository/authentication_repository/authentication_repository.dart';
import 'package:dermoscan/src/repository/user_repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final userRepo = Get.put(UserRepository());

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  // Call this function from Design & it will do the rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }

  Future<void> registerAndCreateUser(String email, String password,
      UserModel user) async {
    String? error = await AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    } else {
      await createUser(user);
      // Go to HomePage
      Get.to(() => const HomeScreen());
  }
  }
}
