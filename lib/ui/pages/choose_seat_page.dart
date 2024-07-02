import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

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
                      border: Border.all(width: 1),
                      image: DecorationImage(
                        image: AssetImage('assets/icons/ic-unavailable.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Unselected',
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
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: kWhiteColor),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('A'),
                Text('B'),
                Text(''),
                Text('C'),
                Text('D'),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(width: 3, color: kPrimaryColor)),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(width: 3, color: kPrimaryColor)),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(17),
                        border: Border.all(width: 3, color: kPrimaryColor)),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: ListView(
                  children: [title(), seatStatus(), selectSeat()],
                ))));
  }
}
