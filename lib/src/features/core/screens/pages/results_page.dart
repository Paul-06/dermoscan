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
            if (widget.imageURI == null) // If imageURI is null, show the message
              const Text('No ha seleccionado una imagen.')
            else // If imageURI is not null, show the image, result, and description
              Column(
                children: [
                  Text(widget.result!, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(widget.imageURI!,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 16),
                  const Text("Descripción", style: TextStyle(fontSize: 16)),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
