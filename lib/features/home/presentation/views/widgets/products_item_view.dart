import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_error.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_loading_indicator.dart';
import 'package:ecommerce_learn_it/features/home/presentation/view_model/products_cubit.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/product_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsItemView extends StatefulWidget {
  const ProductsItemView({super.key, });
  
  

  @override
  State<ProductsItemView> createState() => _ProductsItemViewState();
}

class _ProductsItemViewState extends State<ProductsItemView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess){
          final List<ProductsModel> filteredProducts =  state.products;
         return SizedBox(
          height: 400,
           child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ProductsListViewItem(
                   productsModel: filteredProducts[index],
                ),
              );
            },
                   ),
         );
        }else if (state is ProductsFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
