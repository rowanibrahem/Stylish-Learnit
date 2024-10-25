import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 250,
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: Styles.textStyle24,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: Styles.textStyle14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}