import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailField({required this.emailController, super.key});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.emailAddress,
      controller: emailController,
      label: 'enter your username or email',
      hint: 'your email',
      prefix: Icons.email,
      validate: (value) {
        if (value!.isEmpty) {
          return 'Email must not be empty';
        }
        return null;
      },
    );
  }
}