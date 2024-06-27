import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image-one.png'),
            fit: BoxFit.cover),
      ),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 24,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/emblem.png'),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 256),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                      ),
                      Text('Tangerang',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: light))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailDescription() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
            right: defaultMargin, left: defaultMargin, top: 205),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        width: double.infinity,
        height: 446,
        decoration: BoxDecoration(color: kRedColor),
        child: Column(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [backgroundImage(), detailDescription()],
        ),
      ),
    );
  }
}
