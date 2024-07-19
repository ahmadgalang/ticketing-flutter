import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticketing/cubit/auth_cubit.dart';
import 'package:ticketing/shared/theme.dart';
import 'package:ticketing/ui/widgets/custom_button_widget.dart';
import 'package:ticketing/ui/widgets/custom_field_form.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController hobbyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomFieldForm(
          label: 'Email Address',
          placeholder: 'Input Your Email Address',
          controller: emailController,
        );
      }

      Widget fullName() {
        return CustomFieldForm(
          label: 'Fullname',
          placeholder: 'Input Your Fullname',
          controller: nameController,
        );
      }

      Widget password() {
        return CustomFieldForm(
          label: 'Password',
          placeholder: 'Input password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget hobby() {
        return CustomFieldForm(
          label: 'Hobby',
          placeholder: 'Input Your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus-page', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return CustomButton(
              titleButton: 'Get Started',
              margin: const EdgeInsets.only(top: 20),
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text);
              },
            );
          },
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
      ),
    );
  }
}
