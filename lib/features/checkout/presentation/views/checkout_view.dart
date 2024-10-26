import 'package:ecommerce_learn_it/features/checkout/presentation/views/widgets/appbar_card.dart';
import 'package:ecommerce_learn_it/features/checkout/presentation/views/widgets/checkout_body.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child:  Scaffold(
          appBar: AppbarCard(),
      body: CheckoutBody(),
    ));
  }
}
