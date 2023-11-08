// Step 2 => User repository to perform Database Operations
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dermoscan/src/features/authentication/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(
          () => Get.snackbar("¡Genial!", "Su cuenta ha sido creada.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green.withOpacity(0.1),
              margin: const EdgeInsets.all(10),
              colorText: Colors.green),
        )
        .catchError((error, StackTrace) {
      Get.snackbar("Error", "Algo salió mal. Inténtalo de nuevo.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          margin: const EdgeInsets.all(10),
          colorText: Colors.red);
    });
  }

  // Fetch Data
  // Step 2: Fetch All Users or User Details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }
}
