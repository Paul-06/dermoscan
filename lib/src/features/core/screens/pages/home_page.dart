import 'package:dermoscan/src/constants/text_strings.dart';
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
      appBar: AppBar(
        title: Text(dHome, style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text("Feliz cumpleaños :3", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
