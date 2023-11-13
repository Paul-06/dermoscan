import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  final String categoryCards;
  final String label;

  const CategoryCards({
    Key? key,
    required this.categoryCards,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var backgroundColor = isDark ? caribbean400 : dPrimaryColor;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor, // Puedes cambiar el color
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            categoryCards,
            width: 30, // Ajusta el ancho de la imagen según tus necesidades
            height: 30, // Ajusta la altura de la imagen según tus necesidades
            // Puedes cambiar el color de la imagen
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
