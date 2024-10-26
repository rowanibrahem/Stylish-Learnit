import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:flutter/material.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          'CheckOut',
          style: Styles.textStyle18,
          ),
          const SizedBox(height: 20,),
           const CircleAvatar(
                radius: 40,
                backgroundImage:  AssetImage(
                  AssetImages.vector
                  ), 
              ),
      ],
    );
  }
}