// Step 2 => User repository to perform Database Operations
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dermoscan/src/common_widgets/custom_snack_bar.dart';
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
          () => CustomSnackBar.show(
              "¡Genial!", "Su cuenta ha sido creada.", Colors.green),
        )
        .catchError((error, StackTrace) {
      CustomSnackBar.show(
          "Error", "Algo salió mal. Inténtalo de nuevo.", Colors.red);
    });
  }

  // Fetch Data
  // Step 2: Fetch User Details
  Future<UserModel> getUserDetails(String email) async {
    final snapshot =
        await _db.collection("Users").where("Email", isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapshot(e)).single;
    return userData;
  }

  // Update user
  Future<void> updateUserRecord(UserModel user) async {
    await _db.collection("Users").doc(user.id).update(user.toJson());
  }
}
