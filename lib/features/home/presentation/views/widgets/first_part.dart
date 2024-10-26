import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu, 
                size: 28
                ),
                Image.asset(
                  AssetImages.logo,
                  width: 50,
                 height: 50,
                  ),
                  CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 18,
                  child:  ClipOval(
                    child: Image.asset(
                      AssetImages.vector ,
                      width: 40,
                      height: 40,
                    ),
                    
                  ),
                  
                ),
            ],
          ),
    );
  }
}