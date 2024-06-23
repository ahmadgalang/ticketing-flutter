import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/pages/signup_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(1),
              Colors.black.withOpacity(0.2),
            ], begin: Alignment.bottomCenter, end: Alignment.center),
          )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly a Bird',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold),
                ),
                const SizedBox(height: 10),
                Text(
                  'Explore new world with us and let \n yourself get an amazing experiences',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 80, top: 50),
                  height: 55,
                  width: 220,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: whiteTextStyle.copyWith(
                          fontSize: 17, fontWeight: light),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
