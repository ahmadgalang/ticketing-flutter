import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

class CustomChooseSeat extends StatelessWidget {
  final int status;

  const CustomChooseSeat({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailable;
        case 1:
          return kSelected;
        case 2:
          return kUnvailable;
        default:
          return kAvailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kGreyColor;
        default:
          return kPrimaryColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return null;
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
            ),
          );
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(17),
        border: Border.all(color: borderColor(), width: 1),
      ),
      child: child(),
    );
  }
}
