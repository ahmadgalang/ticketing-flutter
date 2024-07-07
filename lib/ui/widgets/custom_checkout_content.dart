import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticketing/shared/theme.dart';

class CustomCheckoutContent extends StatelessWidget {
  const CustomCheckoutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            margin: EdgeInsets.only(right: 5),
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/fi_check-circle.png'),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'aaaa',
              style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: normal),
            ),
          ),
          Text(
            'saaa',
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
        ],
      ),
    );
  }
}
