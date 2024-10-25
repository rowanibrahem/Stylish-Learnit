import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section with AspectRatio
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top:  Radius.circular(12)),
              child: AspectRatio(
                aspectRatio: 3 / 2, // Adjust to control the image height relative to width
                child: Image.asset(AssetImages.test , fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  const Text(
                    'Black Winter...',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  // Product Description
                  Text(
                    'Autumn And Winter Casual cotton-padded jacket...',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Price and Rating Row
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const Text(
                        '₹499',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                      // Rating
                      const Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const Icon(Icons.star_half, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          // Number of Reviews
                          const Text(
                            '6,890',
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: ListView(
        children: List.generate(10, (index) => const Test()),
      ),
    );
  }
}