import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';
import 'package:ticketing/ui/widgets/custom_choose_seat.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/icons/ic-available.png'))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Available',
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icons/ic-selected.png'))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Selected',
                    style: blackTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.5),
                      image: const DecorationImage(
                        image: AssetImage('assets/icons/ic-unavailable.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Unavailable',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: kWhiteColor),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('A'),
                  Text('B'),
                  Text(''),
                  Text('C'),
                  Text('D'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomChooseSeat(status: 0),
                  const CustomChooseSeat(status: 1),
                  SizedBox(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const CustomChooseSeat(status: 3),
                  const CustomChooseSeat(status: 1),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomChooseSeat(status: 0),
                  const CustomChooseSeat(status: 0),
                  SizedBox(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const CustomChooseSeat(status: 2),
                  const CustomChooseSeat(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomChooseSeat(status: 0),
                  const CustomChooseSeat(status: 0),
                  SizedBox(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const CustomChooseSeat(status: 2),
                  const CustomChooseSeat(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomChooseSeat(status: 0),
                  const CustomChooseSeat(status: 0),
                  SizedBox(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const CustomChooseSeat(status: 2),
                  const CustomChooseSeat(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CustomChooseSeat(status: 0),
                  const CustomChooseSeat(status: 0),
                  SizedBox(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                  const CustomChooseSeat(status: 2),
                  const CustomChooseSeat(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Seat',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium)),
                  const Row(
                    children: [Text('A3'), Text('A3')],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium)),
                  Text('IDR 540.000.000',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: bold)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: CustomButton(
          titleButton: 'Continue to Checkout',
          width: double.infinity,
          onPressed: () {
            Navigator.pushNamed(context, '/checkout');
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: ListView(
            children: [title(), seatStatus(), selectSeat(), button()],
          ),
        ),
      ),
    );
  }
}
