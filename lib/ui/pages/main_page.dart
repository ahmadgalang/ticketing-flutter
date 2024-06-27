import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/pages/home_page.dart';
import 'package:ticketing/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  imageUrl: 'assets/icons/ic-nav-globe.png' , isSelected: true,),
              CustomBottomNavigationItem(
                  imageUrl: 'assets/icons/ic-nav-book.png'),
              CustomBottomNavigationItem(
                  imageUrl: 'assets/icons/ic-nav-creditcard.png'),
              CustomBottomNavigationItem(
                  imageUrl: 'assets/icons/ic-nav-settings.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [const HomePage(), customBottomNavigation(), ],
        ),
      ),
    );
  }
}
