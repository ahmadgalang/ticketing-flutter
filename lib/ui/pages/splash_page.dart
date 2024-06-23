import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/pages/getstarted_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStarted(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/logo.png'),
                ),
              ),
            ),
            Text('AIRPLANE',
                style:
                    whiteTextStyle.copyWith(fontSize: 32, letterSpacing: 10))
          ],
        ),
      ),
    );
  }
}
