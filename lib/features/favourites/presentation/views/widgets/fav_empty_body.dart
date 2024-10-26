
import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/favourites/presentation/views/widgets/empty_item.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/bottom_navbar_body.dart';
import 'package:flutter/material.dart';

class FavEmptyBody extends StatelessWidget {
  const FavEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  EmptyPageItem(
      imagePath: AssetImages.favourite,
      text1: 'No Favorites' ,
      text2: 'You can add an item to your' ,
      text3: 'favorites by clicking “Heart Icon', 
      buttonText: 'Go Shop' ,
      onPressed: (){
       Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomNavbarBody()),
           );
      },
    );
  }
}
