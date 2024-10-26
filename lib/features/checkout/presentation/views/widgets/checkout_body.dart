import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/custom_button.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/checkout/presentation/views/widgets/payment_options.dart';
import 'package:ecommerce_learn_it/features/checkout/presentation/views/widgets/total_part.dart';
import 'package:flutter/material.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TotalPart(),
            const Divider(),
            const PaymentOptions(),
            const SizedBox(height: 30,),
            CustomButton(
                text: 'Continue',
                func: () {
                  _showConfirmationDialog(context);
                }),
          ],
        ),
      ),
    );
  }
}

void _showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(AssetImages.popUp),
            const SizedBox(height: 16),
            Text(
              'Payment done successfully.',
              style: Styles.textStyle14,
            ),
          ],
        ),
      );
    },
  );
}
