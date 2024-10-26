import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/build_product_image_and_details.dart';
import 'package:flutter/material.dart';

class ShopBody extends StatelessWidget {
   const ShopBody({super.key, this.productsModel});
  final ProductsModel? productsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (productsModel != null) 
              BuildProductImageAndDetails(productsdetails: productsModel!),
          ],
        ),
      ),
      
    );
  }
}