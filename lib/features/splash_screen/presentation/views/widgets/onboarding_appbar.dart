
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class OnboardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final VoidCallback onSkip;

  const OnboardingAppBar({
    super.key,
    required this.currentIndex,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${currentIndex + 1}/3',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      actions: [
        TextButton(
          onPressed: onSkip,
          child: Text(
            'Skip',
            style: Styles.textStyle18,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}