import 'package:dermoscan/src/features/core/screens/home/camera_button.dart';
import 'package:dermoscan/src/features/core/screens/home/tabbed_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CameraButton(),
      bottomNavigationBar: TabbedMenu(),
    );
  }
}
