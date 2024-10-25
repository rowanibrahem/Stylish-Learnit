import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleLogo extends StatelessWidget {
  final String svgPath;

  const CircleLogo({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ColorsApp.primaryColor, width: 2),
        color: Colors.pink[50], 
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          svgPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}