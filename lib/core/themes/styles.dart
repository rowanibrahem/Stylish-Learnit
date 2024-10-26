import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:flutter/material.dart';

abstract class Styles {

static TextStyle textStyle18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600, //semibold
  );
  static TextStyle textStyle20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600, 
    color: Colors.white,
  );
  static TextStyle textStyle16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400, 
    color: Colors.white,
  );
  static TextStyle textStyle14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600, 
    color: ColorsApp.secondaryColor,
  );
  static TextStyle textStyle24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800, //extrabold
  );
  static TextStyle textStyle36 = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700, //bold
  );
  static TextStyle textStyle12 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400, //regular
    color: ColorsApp.primaryColor,
  );

  
}