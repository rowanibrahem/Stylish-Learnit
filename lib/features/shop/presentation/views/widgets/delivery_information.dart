import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class DeliveryInformation extends StatelessWidget {
  const DeliveryInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsApp.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Delivery in',
            style: Styles.textStyle14.copyWith(color: Colors.black),
          ),
          Text(
            'within 1 Hour',
            style: Styles.textStyle20.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 16),
        ],
      ),
      
    );
  }
}
