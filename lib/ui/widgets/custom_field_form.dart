import 'package:flutter/material.dart';
import 'package:ticketing/shared/theme.dart';

// ignore: must_be_immutable
class CustomFieldForm extends StatefulWidget {
  final String label;
  final String placeholder;
  final bool obscureText;
  final TextEditingController controller;

 const CustomFieldForm({
    super.key,
    required this.label,
    required this.placeholder,
    this.obscureText = false,
    required this.controller
  });

  @override
  State<CustomFieldForm> createState() => _CustomFieldFormState();
}

class _CustomFieldFormState extends State<CustomFieldForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: blackTextStyle.copyWith(fontWeight: semiBold),
          ),
          const SizedBox(height: 6),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: widget.obscureText,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: const BorderSide(
                  color: Colors.grey, // Warna abu-abu untuk border
                  width: 1.0, // Ketebalan border tipis
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor, // Warna border saat fokus
                  width: 1.0, // Ketebalan border tipis
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
