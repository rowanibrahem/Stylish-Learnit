import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/bottom_navbar_body.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BottomNavbarBody(),
    );
  }
}