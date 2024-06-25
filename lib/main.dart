
import 'package:flutter/material.dart';
import 'package:ticketing/ui/pages/bonus_page.dart';
import 'package:ticketing/ui/pages/getstarted_page.dart';
import 'package:ticketing/ui/pages/homepage.dart';
import 'package:ticketing/ui/pages/signup_page.dart';
import 'package:ticketing/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const SplashPage(),
        '/get-started' :(context) => const GetStarted(),
        '/sign-up' :(context) => const SignUp(),
        '/bonus-page' :(context) => const BonusPage(),
        '/main' : (context) => const HomePage()
      },
    );
  }
}
