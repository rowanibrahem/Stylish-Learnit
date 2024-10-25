import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  final String title;
  const LoginTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle36,
    );
  }
}
