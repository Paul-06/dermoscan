import 'package:dermoscan/src/common_widgets/form_footer_widget.dart';
import 'package:dermoscan/src/common_widgets/form_header_widget.dart';
import 'package:dermoscan/src/constants/image_strings.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:dermoscan/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(dDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: dWelcomeStringImage,
                  title: dLoginTitle,
                  description: dLoginDescription
                ),
                LoginForm(),
                FormFooterWidget(
                    destinationScreen: SignUpScreen(),
                    accountQuestion: dDontHaveAnAccount,
                    pageLink: dSignUp
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
