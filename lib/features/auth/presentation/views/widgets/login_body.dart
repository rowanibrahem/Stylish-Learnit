import 'package:ecommerce_learn_it/constants.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/snack_bar.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/login/log_in_cubit.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/login/log_in_state.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return BlocConsumer<LoginCubit, AuthStates>(
      listener: (context, state) async {
        if (state is LogInSuccessState) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', token!);
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const GetStarted()),
          );
        } else if (state is LogInFailedState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(message: state.message!),
          );
        } else {
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
              content: Row(
                children: [
                  CircularProgressIndicator(
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Loading.."),
                ],
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LoginTitle(
                    title: 'Welcome Back!',
                  ),
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
                      if (formKey.currentState!.validate()) {
                          try {
                            BlocProvider.of<LoginCubit>(context).LogIn(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          } catch (e) {
                            print('Authentication error: $e');
                          }
                        }
                    },
                    text: 'Login',
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
      },
    );
  }
}
