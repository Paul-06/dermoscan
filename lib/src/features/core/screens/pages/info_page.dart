import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), backgroundColor: primary,),
      body: const Center(
        child: Text("Info Page", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}