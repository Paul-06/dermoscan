import 'dart:io';
import 'dart:math';

import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/core/screens/pages/results_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

File imageURI = File('');
String result = '';
String path = '';
int diseaseDetected = 0;

class _PickImageState extends State<PickImage> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          showImagePickerOption(context);
        },
        child: const Icon(
          Icons.add_a_photo_rounded,
          size: 30,
        ));
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.image_rounded,
                              size: 50,
                            ),
                            Text(
                              dFirstOption,
                              style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.fontFamily,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            const Icon(
                              Icons.camera_alt_rounded,
                              size: 50,
                            ),
                            Text(
                              dSecondOption,
                              style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.fontFamily,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  // Gallery
  Future _pickImageFromGallery() async {
    var returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;

    File file = File(returnImage.path);

    if (context.mounted) {
      setState(() {
        imageURI = file;
        path = returnImage.path;
        classifyImage();
      });
      Get.to(() => ResultsPage(
          imageURI: imageURI, result: result, description: diseaseDetected,)); // close the model sheet

      // Como posible solucion para el envio de la imagen a la pagina
      // de resultados es que sea un parametro para la clase ResultsPage
    }
  }

  // Camera
  Future _pickImageFromCamera() async {
    var returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    File file = File(returnImage.path);

    if (context.mounted) {
      setState(() {
        imageURI = file;
        path = returnImage.path;
        classifyImage();
      });
      Get.to(() => ResultsPage(imageURI: imageURI, result: result, description: diseaseDetected,));
    }
  }

  Future classifyImage() async {
    debugPrint('start model.....');

    final interpreterOptions = InterpreterOptions();
    final interpreter = await Interpreter.fromAsset(
      "modelo.tflite",
      options: interpreterOptions,
    );

    debugPrint('load success :');

    var imageProcessor = ImageProcessorBuilder()
        .add(ResizeOp(224, 224, ResizeMethod.NEAREST_NEIGHBOUR))
        .add(NormalizeOp(127.5, 127.5))
        .build();

    var tensorImage = TensorImage.fromFile(File(path));
    tensorImage = imageProcessor.process(tensorImage);

    var outputShape = interpreter.getOutputTensor(0).shape;
    var outputType = interpreter.getOutputTensor(0).type;

    var outputBuffer = TensorBuffer.createFixedSize(outputShape, outputType);

    interpreter.run(tensorImage.buffer, outputBuffer.getBuffer());

    // Define las etiquetas
    List<String> labels = [
      'Acné / Rosacea',
      'Eczema',
      'Melanoma',
      'Psoriasis',
      'Queratosis'
    ];

    // Obtén el índice del resultado más alto.
    final highestScoreIndex = outputBuffer
        .getDoubleList()
        .indexWhere((x) => x == outputBuffer.getDoubleList().reduce(max));

    debugPrint('Enfermedad: $highestScoreIndex');
    // Busca la etiqueta correspondiente.
    final disease = labels[highestScoreIndex];

    debugPrint('result: $disease');

    debugPrint('output:$outputBuffer');

    setState(() {
      result = disease;
      diseaseDetected = highestScoreIndex;
    });

    debugPrint('result:$result');
    debugPrint('end build model !');
  }
}
