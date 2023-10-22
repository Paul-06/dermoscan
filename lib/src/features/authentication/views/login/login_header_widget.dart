import 'package:flutter/material.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: const AssetImage(dWelcomeStringImage), height: size.height * 0.2),
        const SizedBox(height: 20.0,),
        Text(dLoginTitle, style: Theme.of(context).textTheme.headlineLarge),
        Text(dLoginDescription, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}