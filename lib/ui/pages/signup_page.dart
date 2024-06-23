import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Text('Join us and get \nyour next journey',
            style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold)),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: blackTextStyle.copyWith(fontWeight: normal),
              ),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Input your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget fullName() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fullname',
                style: blackTextStyle.copyWith(fontWeight: normal),
              ),
              const SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Input your name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget password() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackTextStyle.copyWith(fontWeight: normal),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Input your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget confirmPassword() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm Password',
                style: blackTextStyle.copyWith(fontWeight: normal),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Input your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget hobby() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobby',
                style: blackTextStyle.copyWith(fontWeight: normal),
              ),
              const SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: 'Input your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget button() {
        return Container(
          height: 55,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            child: Text('Get Started', style: whiteTextStyle.copyWith(
              fontSize: 18, fontWeight: medium
            ),),
          ),
        );
      }

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
        ),
        child: Column(
          children: [
            fullName(),
            emailInput(),
            password(),
            confirmPassword(),
            hobby(),
            button()
          ],
        ),
      );
    }

    Widget termncondition() {
      return Center(
        child: Container(
          margin: const EdgeInsets.only(top: 50, bottom: 73),
          child: GestureDetector(
            onTap: () {
              // ignore: avoid_print
              print('object');
            },
            child: Text(
              'Terms and Condition',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light,decoration: TextDecoration.underline), 
            ),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [title(), inputSection(), termncondition()],
          ),
        ));
  }
}
