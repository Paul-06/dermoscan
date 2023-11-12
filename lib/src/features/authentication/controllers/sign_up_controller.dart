import 'package:dermoscan/src/features/authentication/models/user_model.dart';
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
  Future<bool> registerUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
        margin: const EdgeInsets.all(10),
      ));
      return false; // Indica que la creación de usuario falló
    }
    return true; // Indica que la creación de usuario tuvo éxito
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
  }

  Future<void> registerAndCreateUser(UserModel user) async {
    bool registrationSuccess = await registerUser(user.email, user.password);

    if (registrationSuccess) {
      // Llamamos a createUser solo si registerUser fue exitoso
      await createUser(user);
    }
  }
}
