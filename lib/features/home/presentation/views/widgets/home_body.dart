import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/category_row.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/deal_of_the_day.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/first_part.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/products_item_view.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/search_bar.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/sort_filter.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      physics:  const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
        child: Column(
        children:[
          const FirstPart(),
          const SearchBarPart(),
          const SortFilter(),
          const CategoryRow(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetImages.secondPart,
            ),
          ),
          const DealOfTheDay(),
          const ProductsItemView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetImages.lastPart,),
          ),
        ],
      ),
      ),  
      ],
      
    );
  }
}