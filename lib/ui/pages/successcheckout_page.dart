import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              margin: const EdgeInsets.only(bottom: 80),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/state-schedule.png'),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'Are you ready to explore the new \n world of experiences?',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: CustomButton(
                width: 220,
                titleButton: 'My Bookings',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/main',
                    (route) => false,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
