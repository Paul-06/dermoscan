import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentPage,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
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
                          color: currentTab == 0
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,
                        ),
                        Text(
                          dHome,
                          style: TextStyle(
                              color: currentTab == 0
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey),
                        )
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
                          color: currentTab == 1
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,
                        ),
                        Text(
                          dResults,
                          style: TextStyle(
                              color: currentTab == 1
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,),
                        )
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
                          Icons.book,
                          color: currentTab == 2
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,
                        ),
                        Text(
                          dInfo,
                          style: TextStyle(
                              color: currentTab == 2
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey),
                        )
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
                          color: currentTab == 3
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,
                        ),
                        Text(
                          dSettings,
                          style: TextStyle(
                              color: currentTab == 3
                              ? (MediaQuery.of(context).platformBrightness ==
                                      Brightness.light
                                  ? primary
                                  : caribbean400)
                              : Colors.grey,),
                        )
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
