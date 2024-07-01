import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final Function() onPressed;
  final double width;
  final EdgeInsets margin;

  const CustomButton(
      {super.key,
      required this.titleButton,
      required this.onPressed,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            foregroundColor: kWhiteColor),
        child: Text(
          titleButton,
          style: whiteTextStyle.copyWith(fontSize: 17, fontWeight: medium),
        ),
      ),
    );
  }
}
