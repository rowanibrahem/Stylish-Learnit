import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onSuccess;
  const RegisterRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
        TextButton(
          onPressed: () {
            onSuccess();
          },
          child: Text(
            text2,
            style: Styles.textStyle14.copyWith(color: ColorsApp.primaryColor),
          ),
        ),
      ],
    );
  }
}
