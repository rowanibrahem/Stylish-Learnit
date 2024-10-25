import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/splash_screen/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  double _opacity = 0.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _opacity = 1.0; 
      });
      _controller.forward();
    });

    Future.delayed(const Duration(seconds: 4), () {
      if(mounted){
       Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingView(),
        ), 
      );
      }
      
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 2),
        child: Image.asset(
          AssetImages.logo,
        ),
      ),
    );
  }
}