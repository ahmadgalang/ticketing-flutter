import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_list_destination.dart';
import 'package:ticketing/ui/widgets/custom_popular_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmad\nGalang Afianto',
                    style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icons/profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularCard(
                imageUrl: 'assets/images/image-one.png',
                title: 'Dufan',
                descriptionTitle: 'Jakarta',
                rating: ' 4.5',
              ),
              PopularCard(
                imageUrl: 'assets/images/image-two.png',
                title: 'Alun-alun',
                descriptionTitle: 'Lembang',
                rating: ' 4.5',
              ),
              PopularCard(
                imageUrl: 'assets/images/image-three.png',
                title: 'Pantai',
                descriptionTitle: 'Banten',
                rating: ' 4.5',
              ),
              PopularCard(
                imageUrl: 'assets/images/image-four.png',
                title: 'Puncak',
                descriptionTitle: 'Bogor',
                rating: ' 4.5',
              ),
              PopularCard(
                imageUrl: 'assets/images/image-five.png',
                title: 'Monas',
                descriptionTitle: 'Jakarta',
                rating: ' 4.8',
              ),
            ],
          ),
        ),
      );
    }

    Widget listDestination() {
      return Container(
        margin: const EdgeInsets.only(
            top: 30, right: defaultMargin, left: defaultMargin, bottom: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            const ListDestinationCard(
                title: 'Dufan',
                subTitle: 'Jakarta',
                rating: 4.5,
                imageUrl: 'assets/images/image-one.png'),
            const ListDestinationCard(
                title: 'Dufan',
                subTitle: 'Jakarta',
                rating: 4.5,
                imageUrl: 'assets/images/image-two.png'),
            const ListDestinationCard(
                title: 'Dufan',
                subTitle: 'Jakarta',
                rating: 4.5,
                imageUrl: 'assets/images/image-three.png'),
            const ListDestinationCard(
                title: 'Dufan',
                subTitle: 'Jakarta',
                rating: 4.5,
                imageUrl: 'assets/images/image-four.png'),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestination(), listDestination()],
    );
  }
}
