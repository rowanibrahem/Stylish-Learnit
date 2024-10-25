import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  final String icon;
  final String title;

  const CategoryItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 25,
            child: SvgPicture.asset(
              icon,
              width: 10,
              height: 10,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}