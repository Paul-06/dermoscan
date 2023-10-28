import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/core/screens/home/camera_button.dart';
import 'package:dermoscan/src/features/core/screens/pages/home_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/info_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/results_page.dart';
import 'package:dermoscan/src/features/core/screens/pages/settings_page.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/bottom_app_bar_theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentPage,
      ),
      floatingActionButton: const CameraButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Left Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_rounded,
                          color: DBottomAppBarTheme.getTabIconColor(context, currentTab == 0),
                        ),
                        Text(
                          dHome,
                          style: DBottomAppBarTheme.getTabTextStyle(context, currentTab == 0)
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const ResultsPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_rounded,
                          color: DBottomAppBarTheme.getTabIconColor(context, currentTab == 1),
                        ),
                        Text(
                            dResults,
                            style: DBottomAppBarTheme.getTabTextStyle(context, currentTab == 1)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Spacer
              const Spacer(),
              // Right Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const InfoPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.book_rounded,
                          color: DBottomAppBarTheme.getTabIconColor(context, currentTab == 2),
                        ),
                        Text(
                            dInfo,
                            style: DBottomAppBarTheme.getTabTextStyle(context, currentTab == 2)
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPage = const SettingsPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_rounded,
                          color: DBottomAppBarTheme.getTabIconColor(context, currentTab == 3),
                        ),
                        Text(
                            dSettings,
                            style: DBottomAppBarTheme.getTabTextStyle(context, currentTab == 3)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
