import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/forget_body.dart';
import 'package:flutter/material.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child:  Scaffold(
        body:  ForgetBody(),
      ),
    );
  }
}