import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2),
        const SizedBox(
          height: 20.0,
        ),
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        Text(description, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
