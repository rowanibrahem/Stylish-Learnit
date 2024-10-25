import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryItem(icon: AssetImages.beauty, title: 'Beauty'),
          CategoryItem(icon: AssetImages.fashion, title: 'Fashion'),
          CategoryItem(icon: AssetImages.kids, title: 'Kids'),
          CategoryItem(icon: AssetImages.mens, title: 'Mens'),
          CategoryItem(icon: AssetImages.womens, title: 'Womens'),
        ],
      ),
    );
  }
}
