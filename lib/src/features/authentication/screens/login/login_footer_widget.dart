import 'package:dermoscan/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
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
                    builder: (context) => const SignUpScreen()
                  )
                );
              },
              child: Text.rich(TextSpan(
                  text: dDontHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [
                    TextSpan(
                        text: dSignUp, style: TextStyle(color: Colors.blue))
                  ])))
        ],
      ),
    );
  }
}
