import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:flutter/material.dart';

class ConfirmPassword extends StatelessWidget {
  final TextEditingController passwordController;
  final bool isPasswordVisible;
  final VoidCallback toggleVisibility;

  const ConfirmPassword({
    required this.passwordController,
    required this.isPasswordVisible,
    required this.toggleVisibility,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.visiblePassword,
      controller: passwordController,
      label: 're-enter your password',
      hint: 'Password',
      prefix: Icons.lock,
      suffix: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
      isObscure: !isPasswordVisible,
      pressed: toggleVisibility,
      // validate: (value) {
      //   if (value!.isEmpty) {
      //     return 'password is too short';
      //   }
      //   return null;
      // },
    );
  }
}