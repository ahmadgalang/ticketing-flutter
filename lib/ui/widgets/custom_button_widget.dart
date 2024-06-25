import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

class CustomButton extends StatelessWidget {

  final String titleButton;
  final Function() onPressed;
  final double width;

  const CustomButton({super.key, required this.titleButton, required this.onPressed, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: 55,
      width: width,
      child: TextButton(
        onPressed:onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          foregroundColor: kWhiteColor
        ),
        child: Text(
          titleButton,
          style: whiteTextStyle.copyWith(fontSize: 17, fontWeight: light),
        ),
      ),
    );
  }
}
