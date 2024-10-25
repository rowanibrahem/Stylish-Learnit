import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/email_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_button.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_title.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/get_started.dart';
import 'package:flutter/material.dart';

class ForgetBody extends StatefulWidget {
  const ForgetBody({super.key});

  @override
  State<ForgetBody> createState() => _ForgetBodyState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

var formKey = GlobalKey<FormState>();

class _ForgetBodyState extends State<ForgetBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginTitle(title: 'Forget password?',),
              const SizedBox(height: 30),
                EmailField(emailController: emailController),
                const SizedBox(height: 20),
                    Text(
                      '* We will send you a message to set or reset your new password',
                      style: Styles.textStyle12,
                      ),
                    const SizedBox(height: 30),
                    LoginButton(
                      emailController: emailController,
                      onSuccess: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStarted(),
                          ),
                        );
                      }, 
                      text: 'Submit', passwordController: passwordController,
                    ),      
            ],
          ),
        ),
      ),
    );
  }
}