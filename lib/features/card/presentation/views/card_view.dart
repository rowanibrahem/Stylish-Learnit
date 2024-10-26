import 'package:ecommerce_learn_it/features/card/presentation/views/widgets/card_body.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child:  Scaffold(
      body: CardBody(),
    ));
  }
}
