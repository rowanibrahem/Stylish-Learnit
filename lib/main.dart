import 'package:ecommerce_learn_it/bloc_observer.dart';
import 'package:ecommerce_learn_it/constants.dart';
import 'package:ecommerce_learn_it/core/functions/service_locator.dart';
import 'package:ecommerce_learn_it/core/nertwork/cacheNetwork.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/login/log_in_cubit.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/view_model/sign_up/sign_up_cubit.dart';
import 'package:ecommerce_learn_it/features/auth/presentation/views/signup_view.dart';
import 'package:ecommerce_learn_it/features/home/presentation/data/home_repo_impl.dart';
import 'package:ecommerce_learn_it/features/home/presentation/view_model/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  setUp();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cachInstialization();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  token = await CacheNetwork.getCacheData(key: "token");
  final isLoggedIn = (prefs.getBool('isLoggedIn') == null)
      ? false
      : prefs.getBool('isLoggedIn');
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => LoginCubit(),
        ),
        BlocProvider(
          create: (ctx) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => ProductsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchCourses(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: const SignupView(),
      ),
    );
  }
}
