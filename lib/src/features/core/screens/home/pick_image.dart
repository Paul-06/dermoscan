import 'dart:io';

import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  Uint8List? _image;
  File? selectedIMage;
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
                                fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
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
                                fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
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
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;

    if (context.mounted) {
      setState(() {
        selectedIMage = File(returnImage.path);
        _image = File(returnImage.path).readAsBytesSync();
      });
      Navigator.of(context).pop(); // close the model sheet

      // Como posible solucion para el envio de la imagen a la pagina
      // de resultados es que sea un parametro para la clase ResultsPage
    }
  }

  // Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;

    if (context.mounted) {
      setState(() {
        selectedIMage = File(returnImage.path);
        _image = File(returnImage.path).readAsBytesSync();
      });
      Navigator.of(context).pop();
    }
  }
}
