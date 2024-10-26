import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/view_model/products_cubit.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/app_bar.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/shop_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopPageView extends StatefulWidget {
   const ShopPageView({super.key, this.productsModel});
  final ProductsModel? productsModel;

  @override
  State<ShopPageView> createState() => _ShopPageViewState();
}

class _ShopPageViewState extends State<ShopPageView> {
  @override
  void initState() {
    super.initState();
    if (widget.productsModel != null) {
      BlocProvider.of<ProductsDetailsCubit>(context).fetchCourseDetails(widget.productsModel!.id.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: ShopBody(
          productsModel: widget.productsModel,
        ),
      ),
      );
  }
}