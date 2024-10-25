import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: SignupBody(),
      ),
    );
  }
}