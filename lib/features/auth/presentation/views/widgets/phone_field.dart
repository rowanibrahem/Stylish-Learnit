import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneField({
    required this.phoneController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.phone,
      controller: phoneController,
      label: 'enter your phone',
      hint: 'Phone',
      prefix: Icons.phone,
      // validate: (value) {
      //   if (value!.isEmpty) {
      //     return 'password is too short';
      //   }
      //   return null;
      // },
    );
  }
}
