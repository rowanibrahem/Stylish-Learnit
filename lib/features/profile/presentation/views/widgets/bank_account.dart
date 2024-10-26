import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class BankAccount extends StatelessWidget {
   BankAccount({super.key});
  final TextEditingController _bankAccountController = TextEditingController();
  final TextEditingController _accountHolderController = TextEditingController();
  final TextEditingController _ifscCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleProfile(title: 'Bank Account Details',),
        defaultText(
                controller: _bankAccountController,
                type: TextInputType.number,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your bank account number';
                  }
                  return null;
                },
                label: "Bank Account Number",
                prefix: Icons.account_balance,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _accountHolderController,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the account holder\'s name';
                  }
                  return null;
                },
                label: "Account Holder's Name",
                prefix: Icons.person,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _ifscCodeController,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the IFSC code';
                  }
                  return null;
                },
                label: "IFSC Code",
                prefix: Icons.code,
              ),
              const SizedBox(height: 24.0),
      ],
    );
  }
}