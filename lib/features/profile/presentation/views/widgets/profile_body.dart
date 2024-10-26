
import 'package:ecommerce_learn_it/core/shared_widgets/custom_button.dart';
import 'package:ecommerce_learn_it/features/checkout/presentation/views/checkout_view.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/bank_account.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/business_details.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/first_part.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/personal_details.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  TextEditingController emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  const EdgeInsets.all(8.0),
      child:    Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FirstPart(),
              const PersonalDetails(),
               BusinessDetails(),
               BankAccount(),
               CustomButton(
                text: 'Save', 
                func: (){
                  Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const CheckoutView()),
                 );
                },
                )
            ],
          ),
        ),
      ),
    );
  }
}