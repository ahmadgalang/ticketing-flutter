import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketing/cubit/page_cubit.dart';
import 'package:ticketing/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigationItem(
      {super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(imageUrl,
              width: 24,
              height: 24,
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kGreyColor),
          Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? kPrimaryColor
                    : kTransparent),
          )
        ],
      ),
    );
  }
}
