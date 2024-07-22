import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketing/cubit/page_cubit.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/pages/home_page.dart';
import 'package:ticketing/ui/pages/setting_page.dart';
import 'package:ticketing/ui/pages/transaction_page.dart';
import 'package:ticketing/ui/pages/wallet_page.dart';
import 'package:ticketing/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return const Transaction();
        case 2:
          return const Wallet();
        case 3:
          return const Setting();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(
              bottom: 30, right: defaultMargin, left: defaultMargin),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/ic-nav-globe.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/ic-nav-book.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/ic-nav-creditcard.png',
                index: 2,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icons/ic-nav-settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                buildContent(currentIndex),
                customBottomNavigation(),
              ],
            ),
          ),
        );
      },
    );
  }
}
