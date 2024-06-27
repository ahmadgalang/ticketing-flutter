import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';
import 'package:ticketing/ui/widgets/custom_field_form.dart';

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
        return const CustomFieldForm(label: 'Email Address', placeholder: 'Input Your Email Address',
        );
      }

      Widget fullName() {
        return const CustomFieldForm(label: 'Fullname', placeholder: 'Input Your Fullname',);
      }

      Widget password() {
        return const CustomFieldForm(label: 'Password', placeholder: 'Input password', obscureText: true );
      }

      Widget confirmPassword() {
        return const CustomFieldForm(label: 'Confirm Password', placeholder: 'Input Confirm Password', obscureText: true,);
      }

      Widget hobby() {
        return const CustomFieldForm(label: 'Hobby', placeholder: 'Input Your Hobby',);
      }

      Widget submitButton() {
        return CustomButton(titleButton: 'Get Started', margin: const EdgeInsets.only(top: 20),onPressed: () {
          Navigator.pushNamed(context, '/bonus-page');
        },);
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
            submitButton()
          ],
        ),
      );
    }

    Widget tnc() {
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
              style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline),
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
            children: [title(), inputSection(), tnc()],
          ),
        ));
  }
}
