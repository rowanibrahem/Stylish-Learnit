import 'package:ecommerce_learn_it/features/favourites/presentation/views/widgets/fav_empty_body.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child:  Scaffold(
      body: FavEmptyBody(),
    ));
  }
}
