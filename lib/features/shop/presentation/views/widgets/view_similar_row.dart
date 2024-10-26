import 'package:flutter/material.dart';

class ViewSimilarRow extends StatelessWidget {
  const ViewSimilarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.remove_red_eye),
            label: const Text('View Similar'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.compare),
            label: const Text('Add to Compare'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
