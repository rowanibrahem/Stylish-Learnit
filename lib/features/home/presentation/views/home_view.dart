import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SafeArea(
      child:  ColoredBox(
       color: Colors.white,
        child:  HomeBody(),
        ),
    );
  }
}