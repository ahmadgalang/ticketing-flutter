import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';
import 'package:ticketing/ui/widgets/custom_checkout_content.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 132,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/route.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jakarta',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: normal),
                ),
                Text(
                  'Singapore',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: normal),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget contentCheckout() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/image-one.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(defaultRadius),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16, right: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jakarta Dufan',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: semiBold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Indonesia',
                              style: blackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: light),
                            )
                          ],
                        ),
                      ),
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
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Text(
                'Booking Details',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
            const CustomCheckoutContent(),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 70,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icons/logo.png'))),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: normal),
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDR 10.000.000',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
                Text(
                  'Current Balance',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget payNowButton(){
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: CustomButton(titleButton: 'Pay Now', onPressed: () {
          
        },),
      );
    }
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [route(), contentCheckout(), paymentDetails(), payNowButton()],
            ),
          ],
        ),
      ),
    );
  }
}
