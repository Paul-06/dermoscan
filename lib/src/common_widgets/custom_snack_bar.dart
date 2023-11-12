import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  CustomSnackBar._(); // Para evitar la creación de instancias

  static void show(String title, String message, Color color) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: color.withOpacity(0.1),
      margin: const EdgeInsets.all(10),
      colorText: color,
    );
  }
}
