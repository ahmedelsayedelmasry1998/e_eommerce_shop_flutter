// ignore: file_names
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType textInputType;
  final bool isPassword;
  final String hintText;
  const CustomTextField(
      {required this.textInputType,
      required this.isPassword,
      required this.hintText,
      super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        filled: true,
        // fillColor: Colors.black
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }
}
