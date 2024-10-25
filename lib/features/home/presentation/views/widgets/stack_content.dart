import 'package:ecommerce_learn_it/core/shared_widgets/custom_button.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/bottom_navbar_body.dart';
import 'package:flutter/material.dart';

class StackContent extends StatelessWidget {
  const StackContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text(
                      'You want\nAuthentic, here you go!',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle36.copyWith(color: Colors.white , fontSize: 30),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Find it here, buy it now!',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle14.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 50.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20),
                      child:  CustomButton(
                        text: 'Get Started', 
                        func: (){
                      Navigator.pushReplacement(
                     context,
                         MaterialPageRoute(builder: (context) => const BottomNavbarBody(),
                   ), 
                      );
                        }
                        ),
                    ),
                  ],
                 );
  }
}