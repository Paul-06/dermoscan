import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/core/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: dFormHeight - 10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: dEmail,
                  hintText: dEmail),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: dPassword,
                hintText: dPassword,
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            const Align(
                alignment: Alignment.centerRight,
                child:
                    TextButton(onPressed: null, child: Text(dForgetPassword))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const HomeScreen()),
                style: ElevatedButton.styleFrom(
                    side: BorderSide.none, shape: const StadiumBorder()),
                child: Text(dLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
