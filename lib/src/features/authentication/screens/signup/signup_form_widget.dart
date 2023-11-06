import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/controllers/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: dFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(dFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(dEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(dPhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(dPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: dFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      SignUpController.instance.registerUser(
                          controller.email.text.trim(),
                          controller.password.text.trim()
                      );
                    }
                  },
                  child: Text(dSignUp.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}
