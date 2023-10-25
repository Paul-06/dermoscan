import 'package:dermoscan/src/constants/image_strings.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/authentication/screens/login/login_screen.dart';
import 'package:dermoscan/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      padding: const EdgeInsets.all(dDefaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
              image: const AssetImage(dWelcomeStringImage),
              height: height * 0.5),
          Column(
            children: [
              Text(
                dWelcomeTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                dWelcomeDescription,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen())
                        );
                      },
                      child: Text(dLogin.toUpperCase()))),
              const SizedBox(
                width: 10.0,
              ), 
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen())
                        );
                      },
                      child: Text(dSignUp.toUpperCase()))),
            ],
          )
        ],
      ),
    ));
  }
}
