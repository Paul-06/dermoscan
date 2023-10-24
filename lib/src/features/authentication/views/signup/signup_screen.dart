import 'package:dermoscan/src/common_widgets/form_header_widget.dart';
import 'package:dermoscan/src/constants/image_strings.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/views/signup/signup_footer_widget.dart';
import 'package:dermoscan/src/features/authentication/views/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(dDefaultSize),
            child: const Column(
              children: [
                FormHeaderWidget(
                    image: dWelcomeStringImage,
                    title: dSignUpTitle,
                    description: dSignUpDescripction
                ),
                SignUpFormWidget(),
                SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
