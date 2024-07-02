import 'package:flutter/material.dart';
import 'package:ticketing/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String descriptionTitle;
  final String rating;

  const PopularCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.descriptionTitle,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left: defaultMargin),
        width: 200,
        height: 323,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/star.png'),
                          ),
                        ),
                      ),
                      Text(
                        rating,
                        style: blackTextStyle.copyWith(fontWeight: bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                descriptionTitle,
                style: blackTextStyle.copyWith(fontWeight: light, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
