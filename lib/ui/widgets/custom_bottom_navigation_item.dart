import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';


class CustomBottomNavigationItem extends StatelessWidget {

  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavigationItem({super.key, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(color: isSelected ? kPrimaryColor : kTransparent),
        )
      ],
    );
  }
}
