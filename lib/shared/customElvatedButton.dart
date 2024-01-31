import 'package:flutter/material.dart';

import 'constantColors.dart';

class CustomElvatedButton extends StatelessWidget {
  String textContent;
  CustomElvatedButton({required this.textContent, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(textContent),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btnPink),
          padding: MaterialStateProperty.all(EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
    );
  }
}
