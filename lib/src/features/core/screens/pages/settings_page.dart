import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dSettings, style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text("Settings Page", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}