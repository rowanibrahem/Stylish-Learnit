import 'package:ecommerce_learn_it/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;
  final String text;

  const LoginButton({
    required this.emailController,
     required this.passwordController,
    required this.onSuccess,
    super.key, required this.text,
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
