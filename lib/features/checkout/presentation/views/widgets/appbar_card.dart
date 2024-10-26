import 'package:flutter/material.dart';

class AppbarCard extends StatelessWidget implements PreferredSizeWidget{
  const AppbarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text('Checkout'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      );
  }
  
  @override
  // TODO: implement preferredSize
    Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}