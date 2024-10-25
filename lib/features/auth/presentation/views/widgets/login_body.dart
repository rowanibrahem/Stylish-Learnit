import 'package:ecommerce_learn_it/features/auth/presentation/views/signup_view.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/email_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/forget.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_button.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_methods.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_title.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/password_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/register_row.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/get_started.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _LoginBodyState extends State<LoginBody> {
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
              const LoginTitle(title: 'Welcome Back!',),
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
                    const Forget(),
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
                      }, text: 'Login',
                    ),
                    const SizedBox(height: 20),
                    const LoginMethods(),
                    const SizedBox(height: 30),
                     RegisterRow(
                    text1: 'Don\'t have an account?',
                     text2: 'Register Here', 
                     onSuccess: () { 
                      Navigator.push(
                      context,
                    MaterialPageRoute(
                   builder: (context) => const SignupView(),
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