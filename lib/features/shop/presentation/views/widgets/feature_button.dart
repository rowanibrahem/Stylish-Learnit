import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class FeatureButton extends StatelessWidget {
  const FeatureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFeatureButton(Icons.store, 'Nearest Store'),
          _buildFeatureButton(Icons.security, 'VIP'),
          _buildFeatureButton(Icons.assignment_return, 'Return policy'),
        ],
      ),
    );
  }
}

Widget _buildFeatureButton(IconData icon, String label) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 20),
          const SizedBox(width: 8),
          Text(
            label,
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    ),
  );
}
