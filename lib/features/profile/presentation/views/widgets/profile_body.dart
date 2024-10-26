
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/build_text_field.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/first_part.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  const EdgeInsets.all(8.0),
      child:    const Column(
        children: [
         const FirstPart(),
         const TitleProfile(title: 'Personal Details',),
      
         const TitleProfile(title: 'Business Address Details',),
         const TitleProfile(title: 'Bank Account Details',),

        ],
      ),
    );
  }
}