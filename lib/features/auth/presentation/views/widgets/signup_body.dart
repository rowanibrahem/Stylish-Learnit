import 'package:ecommerce_learn_it/constants.dart';
import 'package:ecommerce_learn_it/core/shared_widgets/snack_bar.dart';
import 'package:ecommerce_learn_it/core/themes/styles.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/sign_up/sign_up_states.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/email_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_methods.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/login_title.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/password_field.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/register_row.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:ecommerce_learn_it/features/home/presentation/views/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();

bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
      listener: (context, state) async {
        if (state is SignUpSuccessState) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', token!);

          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const GetStarted()),
          );
        } else if (state is SignUpFailedState) {
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
      builder: (context, State) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LoginTitle(
                    title: 'Create an account',
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
                  const SizedBox(height: 25),
                  PhoneField(
                    phoneController: phoneController,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'By clicking the Register button, you agree to the public offer',
                    style: Styles.textStyle12,
                  ),
                  const SizedBox(height: 30),
                  SignUpButton(
                    emailController: emailController,
                    passwordController: passwordController,
                    phoneController: phoneController,
                    onSuccess: () {
                      if (formKey.currentState!.validate()) {
                        try {
                          BlocProvider.of<SignUpCubit>(context).SignUp(
                            name: nameController.text,
                            phoneNum: phoneController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        } catch (e) {
                          // Handle authentication error
                          print('Authentication error: $e');
                        }
                      }
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
      },
    );
  }
}
