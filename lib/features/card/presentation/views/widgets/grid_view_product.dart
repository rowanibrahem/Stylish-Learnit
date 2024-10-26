import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_error.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_loading_indicator.dart';
import 'package:ecommerce_learn_it/features/home/presentation/view_model/products_cubit.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/product_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridViewProduct extends StatelessWidget {
  const GridViewProduct({super.key,});
  
  @override
  Widget build(BuildContext context) {
   
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess){
          final List<ProductsModel> products =  state.products;
         return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 8.0, 
            mainAxisSpacing: 8.0, 
            childAspectRatio: .5, 
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductsListViewItem(productsModel: products[index]);
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