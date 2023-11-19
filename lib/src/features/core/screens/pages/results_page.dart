import 'dart:io';

import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  final File? imageURI;
  final String? result;
  final int? description;

  const ResultsPage({super.key,
    required this.imageURI,
    required this.result,
    required this.description
  });

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  List<String> descriptions = [
    "El acné es una enfermedad de la piel que se caracteriza por la aparición de granos, espinillas y puntos negros. Se produce por un exceso de producción de sebo en los folículos pilosos.",
    "El eczema es una enfermedad inflamatoria de la piel que se caracteriza por la aparición de enrojecimiento, picazón y descamación. Puede ser causado por una reacción alérgica, una infección o una condición genética.",
    "El melanoma es un tipo de cáncer de piel que se origina en los melanocitos, las células que producen melanina. Es el tipo de cáncer de piel más peligroso y puede ser mortal.",
    "La psoriasis es una enfermedad crónica de la piel que se caracteriza por la aparición de parches rojos escamosos. Se produce por un exceso de producción de células de la piel.",
    "La queratosis seborreica es un crecimiento benigno de la piel que se caracteriza por la aparición de manchas marrones o negras. Es más común en personas mayores.",
  ];

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
              Text('No ha seleccionado una imagen.', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),)
            else // If imageURI is not null, show the image, result, and description
              Column(
                children: [
                  Text(widget.result!, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(widget.imageURI!,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(descriptions[widget.description!], style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16)),
                  ),

                ],
              ),
          ],
        ),
      ),
    );
  }
}
