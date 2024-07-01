import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';

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
      ),
    );
  }

  Widget content() {
    return Column(
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake ',
                      style: whiteTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text('Tangerang',
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: light))
                  ],
                ),
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
        Container(
          margin:
              const EdgeInsets.only(right: defaultMargin, left: defaultMargin),
          decoration: BoxDecoration(color: kWhiteColor),
        ),
        Container(
          margin: const EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, top: 30),
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 40),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: kWhiteColor),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'About',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackTextStyle.copyWith(),
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: kRedColor,
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/image-one.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(17)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Interest',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 16,
                                width: 16,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/fi_check-circle.png'),
                                  ),
                                ),
                              ),
                              Text(
                                'Interest',
                                style: blackTextStyle.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 16,
                                width: 16,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/fi_check-circle.png'),
                                  ),
                                ),
                              ),
                              Text(
                                'Interest',
                                style: blackTextStyle.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/fi_check-circle.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Interest',
                              style: blackTextStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 16,
                              width: 16,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/icons/fi_check-circle.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Interest',
                              style: blackTextStyle.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget footer() {
    return Row(
      children: [
        const Column(
          children: [Text('IDR 50.000.000'), Text('IDR 50.000.000')],
        ),
        CustomButton(
          titleButton: 'Book Now',
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImage(), content(), footer(),
          ],
        ),
      ),
    );
  }
}
