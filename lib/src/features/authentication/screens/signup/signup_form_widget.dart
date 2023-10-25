import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(vertical: dFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(dFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(dEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(dPhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: dFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(dPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: dFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(dSignUp.toUpperCase())
              ),
            )
          ],
        ),
      ),
    );
  }
}