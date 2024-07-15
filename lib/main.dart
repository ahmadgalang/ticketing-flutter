import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketing/cubit/page_cubit.dart';
import 'package:ticketing/ui/pages/bonus_page.dart';
import 'package:ticketing/ui/pages/checkout_page.dart';
import 'package:ticketing/ui/pages/choose_seat_page.dart';
import 'package:ticketing/ui/pages/getstarted_page.dart';
import 'package:ticketing/ui/pages/main_page.dart';
import 'package:ticketing/ui/pages/signup_page.dart';
import 'package:ticketing/ui/pages/splash_page.dart';
import 'package:ticketing/ui/pages/successcheckout_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStarted(),
          '/sign-up': (context) => const SignUp(),
          '/bonus-page': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
          '/choose-seat': (context) => const ChooseSeat(),
          '/checkout': (context) => const CheckOut(),
          '/success-checkout': (context) => const SuccessCheckout()
        },
      ),
    );
  }
}
