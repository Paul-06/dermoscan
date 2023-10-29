import 'package:flutter/material.dart';

class FormFooterWidget extends StatelessWidget {
  final Widget destinationScreen; // Pantalla de destino
  final String accountQuestion, pageLink;

  const FormFooterWidget({
    Key? key,
    required this.destinationScreen,
    required this.accountQuestion,
    required this.pageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => destinationScreen, // Utiliza la pantalla de destino proporcionada
                ),
              );
            },
            child: Text.rich(
              TextSpan(
                text: accountQuestion,
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: pageLink,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
