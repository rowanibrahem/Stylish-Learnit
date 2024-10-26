import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/bottom_navbar_body.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavbarBody(),
        ), 
      );
          },
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
          label: const Text('Go to cart', style: const TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Button color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProfileView(),
        ), 
      );
          },
          icon: const Icon(Icons.touch_app, color: Colors.white),
          label: const Text('Buy Now', style: const TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green, // Button color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}