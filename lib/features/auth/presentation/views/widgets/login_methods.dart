import 'package:ecommerce_learn_it/core/constants/asset_icons.dart';
import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/circle_logo.dart';
import 'package:flutter/material.dart';

class LoginMethods extends StatefulWidget {
  const LoginMethods({super.key});

  @override
  State<LoginMethods> createState() => _LoginMethodsState();
}

class _LoginMethodsState extends State<LoginMethods> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          '- OR Continue with -',
          style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w500 , color: ColorsApp.secondaryColor),
          ),
          const SizedBox(height: 20),
          const SingleChildScrollView(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CircleLogo(svgPath: AssetIcons.googleIcon),
               SizedBox(width: 10), 
               CircleLogo(svgPath: AssetIcons.appleIcon),
               SizedBox(width: 10), 
               CircleLogo(svgPath: AssetIcons.facebookleIcon),
              ],
            ),
          ),
      ],
    );
  }
}