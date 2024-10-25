import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/forget_view.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, 
      children: [
        TextButton(
          onPressed: (){
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ForgetView(),
            ), 
          );      
          }, 
          child:  Text(
            'Forget Password?',
            style: Styles.textStyle12,
            ),
          ),
      ],
    );
  }
}