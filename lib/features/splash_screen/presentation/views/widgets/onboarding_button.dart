import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final int currentIndex;
  final PageController pageController;

  const OnboardingButton({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (currentIndex < 2) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView(),
        ), 
      );
          print("Get Started clicked");
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        currentIndex == 2 ? 'Get Started' : 'Next',
        style: Styles.textStyle18.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
// import 'package:ecommerce_learn_it/core/themes/colors_app.dart';
// import 'package:ecommerce_learn_it/core/themes/styles.dart';
// import 'package:flutter/material.dart';

// class OnboardingButton extends StatelessWidget {
//   final int currentIndex;
//   final PageController pageController;

//   const OnboardingButton({
//     super.key,
//     required this.currentIndex,
//     required this.pageController,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         // "Prev" button logic
//         if (currentIndex > 0)
//           ElevatedButton(
//             onPressed: () {
//               pageController.previousPage(
//                 duration: const Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: ColorsApp.primaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//             child: Text(
//               'Prev',
//               style: Styles.textStyle18.copyWith(color: Colors.white),
//             ),
//           )
//         else
//           const SizedBox(width: 0), // Placeholder to maintain layout when "Prev" is hidden

//         // "Next" or "Get Started" button logic
//         ElevatedButton(
//           onPressed: () {
//             if (currentIndex < 2) {
//               pageController.nextPage(
//                 duration: const Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             } else {
//               // Navigate to the next screen or home page
//               print("Get Started clicked");
//             }
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: ColorsApp.primaryColor,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//           ),
//           child: Text(
//             currentIndex == 2 ? 'Get Started' : 'Next',
//             style: Styles.textStyle18.copyWith(color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }
