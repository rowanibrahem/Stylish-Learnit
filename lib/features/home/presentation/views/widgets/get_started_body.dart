import 'package:ecommerce_learn_it/core/constants/asset_images.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/widgets/stack_content.dart';
import 'package:flutter/material.dart';

class GetStartedBody extends StatefulWidget {
  const GetStartedBody({super.key});

  @override
  State<GetStartedBody> createState() => _GetStartedBodyState();
}

class _GetStartedBodyState extends State<GetStartedBody> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
             AssetImages.getStarted,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.6),
                  ],
                ),
              ),
               child: const Padding(
                 padding:  EdgeInsets.all(8.0),
                 child:  StackContent(),
               ),
            ),
          ),
      ],
    
    );
  }
}