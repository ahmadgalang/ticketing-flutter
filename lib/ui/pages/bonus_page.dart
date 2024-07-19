import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        margin: const EdgeInsets.only(bottom: 80),
        padding: const EdgeInsets.all(24),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          image: const DecorationImage(
            image: AssetImage('assets/icons/rectangle.png'),
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: kPrimaryColor,
              offset: const Offset(0, 10),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ahmad Galang',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: bold),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/logo.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'IDR 300.000.000',
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: bold),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'Big Bonus 🥶',
                textAlign: TextAlign.center,
                style:
                    blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
              )
            ],
          ),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                'We give you early credit so that\nyou can buy a flight ticket',
                textAlign: TextAlign.center,
                style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              )
            ],
          ),
        ),
      );
    }

    Widget startFlyButton() {
      return CustomButton(
        titleButton: 'Start Fly Now', margin: const EdgeInsets.only(top: 50),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
        width: 220,
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subTitle(), startFlyButton()],
        ),
      ),
    );
  }
}
