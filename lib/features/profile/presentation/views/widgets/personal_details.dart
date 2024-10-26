import 'package:ecommerce_learn_it/core/shared_widgets/dafault_text.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/profile/presentation/views/widgets/title_profile.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
 const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const TitleProfile(title: 'Personal Details',),
        defaultText(
                controller: _emailController,
                type: TextInputType.emailAddress,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                label: "Email Address",
                prefix: Icons.email,
              ),
              const SizedBox(height: 20,),
              defaultText(
                controller: _passwordController,
                type: TextInputType.visiblePassword,
                isObscure: true,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                label: "Password",
                prefix: Icons.lock,
                suffix: Icons.visibility,
                pressed: () {
                  setState(() {
                    _passwordController.text = ''; 
                  });
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child:  Text("Change Password", style: Styles.textStyle12),
                ),
              ),
              const SizedBox(height: 16.0),
      ],
    );
  }
}