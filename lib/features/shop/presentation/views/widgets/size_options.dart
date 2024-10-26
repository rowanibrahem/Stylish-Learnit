import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SizeOptions extends StatelessWidget {
  const SizeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size: 7UK',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSizeOption('6 UK', false),
              _buildSizeOption('7 UK', true),
              _buildSizeOption('8 UK', false),
              _buildSizeOption('9 UK', false),
              _buildSizeOption('10 UK', false),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildSizeOption(String size, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? ColorsApp.primaryColor : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
        color: isSelected
            ? ColorsApp.primaryColor.withOpacity(0.2)
            : Colors.transparent,
      ),
      child: Text(
        size,
        style: TextStyle(
          color: isSelected ? ColorsApp.primaryColor : Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
