import 'package:dermoscan/src/features/core/screens/home/bottom_app_bar.dart';
import 'package:dermoscan/src/features/core/screens/home/camera_button.dart';
import 'package:dermoscan/src/features/core/screens/pages/home_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/info_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/results_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> pages = [
    const HomePage(),
    const ResultsPage(),
    const InfoPage(),
    const SettingsPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = const HomePage();

  void _changePage(int index) {
    setState(() {
      currentPage = pages[index];
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentPage,
      ),
      floatingActionButton: const CameraButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: DBottomAppBar(
        currentTab: currentTab,
        onTabChanged: _changePage,
        context: context,
      ),
    );
  }
}
