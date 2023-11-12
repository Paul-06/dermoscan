import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/controllers/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LogInController());
    final formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: dFormHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: dEmail,
                  hintText: dEmail),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              controller: controller.password,
              obscureText: isObscure,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: dPassword,
                hintText: dPassword,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: isObscure == true
                      ? const Icon(LineAwesomeIcons.eye_slash)
                      : const Icon(LineAwesomeIcons.eye),
                ),
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String email = controller.email.text.trim();
                    String password = controller.password.text.trim();

                    LogInController.instance.logInUser(email, password);
                  }
                },
                child: Text(dLogin.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
