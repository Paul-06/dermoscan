import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), backgroundColor: primary,),
      body: const Center(
        child: Text("Home Page", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
