import 'dart:io';

import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  final File? imageURI;
  final String? result;

  const ResultsPage({super.key,
  required this.imageURI,
  required this.result});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dResults, style: Theme.of(context).textTheme.titleLarge,),
        automaticallyImplyLeading: false,
      ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  widget.imageURI == null
                      ? const Text('No ha seleccionado una imagen.')
                      : Image.file(widget.imageURI!,
                      width: 224, height: 224, fit: BoxFit.cover),
                  widget.result == null ? const Text('Resultado') : Text(widget.result!)
                ])),
    );
  }
}