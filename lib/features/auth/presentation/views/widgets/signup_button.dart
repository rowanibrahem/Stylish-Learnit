import 'package:ecommerce_learn_it/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final VoidCallback onSuccess;
  final String text;

  const SignUpButton({
    required this.emailController,
     required this.passwordController,
    required this.onSuccess,
    super.key,
     required this.text, 
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: text,
      func: () {
        if (!emailController.text.contains('@')) {
          displayToastMssg('Email address isn\'t valid', context);
        } else if (passwordController.text.isEmpty) {
          displayToastMssg('Password is mandatory', context);
        } else {
          onSuccess();
        }
      },
    );
  }
}

displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
