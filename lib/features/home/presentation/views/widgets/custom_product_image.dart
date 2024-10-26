import 'package:ecommerce_learn_it/constants.dart';
import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/shop_page_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomProductsImage extends StatelessWidget {
   const CustomProductsImage({super.key , required this.productsModel});
   final ProductsModel? productsModel;

  @override
  Widget build(BuildContext context) {
    if (productsModel == null || productsModel!.imagePath == null || productsModel!.imagePath!.isEmpty) {
      
      return _buildPlaceholderImage();
    }
    if (productsModel == null || productsModel!.imagePath == null) {
      return _buildPlaceholderImage();
    }

    
     final imageUrl = baseUrl + productsModel!.imagePath!;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ShopPageView(),
          // CourseView(courseModel: courseModel),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 2.2 / 2.2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top:  Radius.circular(12)),
            child: InteractiveViewer(
              child: FadeInImage.assetNetwork(
                placeholder: AssetImages.onBoardingone,
                width: double.infinity, 
                image: imageUrl, 
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget _buildPlaceholderImage() {
    return AspectRatio(
      aspectRatio: 2.2 / 2.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:  const DecorationImage(
              fit: BoxFit.fill,
              image:  AssetImage(AssetImages.onBoardingone),
        ),            
          ),
        ),
      
    );
  }
