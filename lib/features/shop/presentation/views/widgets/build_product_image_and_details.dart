
import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_error.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/view_model/products_cubit.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/buttons.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/delivery_information.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/feature_button.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/similar_section.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/size_options.dart';
import 'package:ecommerce_learn_it/features/shop/presentation/views/widgets/view_similar_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BuildProductImageAndDetails extends StatelessWidget {
  const BuildProductImageAndDetails({super.key, required this.productsdetails});

  final ProductsModel productsdetails;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsDetailsCubit, ProductsDetailsState>(
      builder: (context, state) {
        if (state is ProductsDetailsSuccess) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomProductsImage(productsModel: productsdetails,),
                const SizedBox(height: 25),
                const SizeOptions(),
                Text(
                  productsdetails.title.toString(),
                  style: Styles.textStyle16.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 5),
                Text(
                  'Product Description',
                  style: Styles.textStyle16.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  productsdetails.overview.toString(),
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 10),
                 Text(
                  ' EGP ${productsdetails.price} ',
                  style: Styles.textStyle16.copyWith(fontSize: 20 , color: Colors.black),
                ),
                const SizedBox(height: 10),
                Text(
                  'Product Details',
                  style: Styles.textStyle16.copyWith(fontSize: 20 , color: Colors.black),
                ),
                const SizedBox(height: 10),
                const FeatureButton(),
                const SizedBox(height: 15),
                const Buttons(),
                const SizedBox(height: 15),
                const DeliveryInformation (),
                const SizedBox(height: 15),
                const ViewSimilarRow(),
                const SizedBox(height: 15),
                const SimilarSection(),
                const SizedBox(
                  height: 30,
                ),
                
              ],
            ),
          );
        } else if (state is ProductsDetailsFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return _buildShimmerEffect(); 
        }
      },
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200, 
            color: Colors.white,
          ),
          const SizedBox(height: 25),
          Container(
            width: 150, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 25),
          Container(
            width: 100, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 25),
          Container(
            width: double.infinity, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 40),
          Container(
            width: double.infinity, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, 
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          Container(
            width: 100, 
            height: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}