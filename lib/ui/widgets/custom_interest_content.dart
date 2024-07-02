import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomInterest extends StatelessWidget {
  const CustomInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/fi_check-circle.png'),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Interest',
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/fi_check-circle.png'),
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Interest',
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
