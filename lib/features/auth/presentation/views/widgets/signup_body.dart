import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/confirm_password.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/email_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_button.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_methods.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_title.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/password_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/register_row.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/get_started.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordcontroller = TextEditingController();

bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _SignupBodyState extends State<SignupBody> {
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
              const LoginTitle(title: 'Create an account',),
              const SizedBox(height: 30),
                EmailField(emailController: emailController),
                const SizedBox(height: 25),
                    PasswordField(
                      passwordController: passwordController,
                      isPasswordVisible: isPasswordVisible,
                      toggleVisibility: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                    const SizedBox(height: 25),
                     ConfirmPassword(
                      passwordController: confirmPasswordcontroller,
                      isPasswordVisible: isPasswordVisible,
                      toggleVisibility: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                    const SizedBox(height: 15),
                     Text(
                      'By clicking the Register button, you agree to the public offer',
                      style: Styles.textStyle12,
                      ),
                    const SizedBox(height: 30),
                    LoginButton(
                      emailController: emailController,
                      passwordController: passwordController,
                      onSuccess: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStarted(),
                          ),
                        );
                      }, 
                      text: 'Create Account',
                    ),
                    const SizedBox(height: 20),
                    const LoginMethods(),
                    const SizedBox(height: 30),
                     RegisterRow(
                    text1: 'Already Have an account?',
                     text2: 'Login', 
                     onSuccess: () { 
                      Navigator.push(
                   context,
                  MaterialPageRoute(
                builder: (context) => const LoginView(),
                 ),
                );
                      },
                     ),
            ],
          ),
        ),
      ),
    );
  }
}