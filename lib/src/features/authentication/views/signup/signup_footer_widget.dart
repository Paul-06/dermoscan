import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/views/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen()
                  )
                );
              },
              child: Text.rich(TextSpan(
                  text: dAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                        text: dLogin, style: TextStyle(color: Colors.blue))
                  ])))
        ],
      ),
    );
  }
}