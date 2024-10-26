import 'package:ecommerce_learn_it/features/card/presentation/views/widgets/sort_filter.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/search_bar.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/first_part.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child:  Column(
        children: [
          FirstPart(),
          SearchBarPart(),
          SortFilterCard(),
        ],
      ),
    );
  }
}