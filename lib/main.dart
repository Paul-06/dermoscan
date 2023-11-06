import 'package:dermoscan/firebase_options.dart';
import 'package:dermoscan/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:dermoscan/src/repository/authentication_repository/authentication_repository.dart';
import 'package:dermoscan/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DAppTheme.lightTheme,
      darkTheme: DAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 500),
      home: const WelcomeScreen(),
    );
  }
}
