import 'package:ecommerce_learn_it/core/models/products.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:flutter/material.dart';

class ProductsListViewItem extends StatelessWidget {

  const ProductsListViewItem({super.key, required this.productsModel});
  final ProductsModel productsModel;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(child: CustomProductsImage(productsModel: productsModel)),
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                   Text(
                    '${productsModel.title}',
                    style: Styles.textStyle12.copyWith(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                 
                   Text(
                    'Autumn And Winter Casual cotton-padded jacket...',
                    style: Styles.textStyle12.copyWith(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Price and Rating Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text(
                        '₹499',
                        style: Styles.textStyle16.copyWith(color: Colors.green),
                      ),
                      // Rating
                      const Row(
                        children: [
                           Icon(Icons.star, color: Colors.amber, size: 16),
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          Icon(Icons.star_half, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          // Number of Reviews
                          Text(
                            '6,890',
                            style:  TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
      ),
    );
  }
}


//  Shimmer getShimmerLoading(){
//   return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//     child: GestureDetector(
//       onTap: (){
//         GoRouter.of(context).push('/BookView' , extra: bookModel);
//       },
//       child: SizedBox(
//         height: 125,
//         child: Row(
//           children: [
//             CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
//             const SizedBox(
//               width: 30,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:  [
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * .5,
//                     child:  Text (
//                       bookModel.volumeInfo.title!,
//                       style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   Text(
//                     bookModel.volumeInfo.authors![0],
//                     style: Styles.textStyle14,
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         'Free',
//                         style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
//                       ),
//                       const Spacer(),
//                       Expanded(
//                           child: BookRating(
//                             rating: bookModel.volumeInfo.averageRating ?? 4,
//                             count: bookModel.volumeInfo.ratingsCount  ?? 2500,
//                           )
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );,
//   );
//  }