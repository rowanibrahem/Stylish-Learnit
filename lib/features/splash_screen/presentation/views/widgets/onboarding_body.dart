import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/widgets/onboarding_button.dart';
import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/widgets/onboarding_dots.dart';
import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  final PageController pageController;
  final Function(int) onPageChanged;
  final int currentIndex;

  const OnboardingBody({
    super.key,
    required this.pageController,
    required this.onPageChanged,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: const [
              OnboardingPage(
                imagePath: AssetImages.onBoardingone,
                title: 'Choose Products',
                description:
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
              ),
              OnboardingPage(
                imagePath: AssetImages.onBoardingtwo,
                title: 'Easy Payment',
                description:
                    'Easily pay for your orders with multiple payment options available for your convenience.',
              ),
              OnboardingPage(
                imagePath: AssetImages.onBoardingthree,
                title: 'Fast Delivery',
                description:
                    'Get your products delivered to your doorstep with fast and reliable delivery services.',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              OnboardingDots(
                currentIndex: currentIndex,
                dotsCount: 3,
              ),
              OnboardingButton(
                currentIndex: currentIndex,
                pageController: pageController,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
