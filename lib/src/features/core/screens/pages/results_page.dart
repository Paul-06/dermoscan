import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Results"), backgroundColor: primary,),
      body: const Center(
        child: Text("Results Page", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}