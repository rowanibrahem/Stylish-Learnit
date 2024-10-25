import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardingDots extends StatelessWidget {
  final int currentIndex;
  final int dotsCount;

  const OnboardingDots({
    super.key,
    required this.currentIndex,
    required this.dotsCount,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
      position: currentIndex, 
      decorator: DotsDecorator(
        activeColor: Colors.black,
        color: Colors.grey,
        size: const Size.square(8.0),
        activeSize: const Size(18.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
