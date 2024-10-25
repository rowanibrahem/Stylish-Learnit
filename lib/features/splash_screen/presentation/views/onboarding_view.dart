import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/widgets/onboarding_appbar.dart';
import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingView extends StatefulWidget {
   const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

@override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        appBar: OnboardingAppBar(
        currentIndex: currentIndex,
        onSkip: () => _pageController.jumpToPage(2),
      ),
        body:  OnboardingBody(
          pageController: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}