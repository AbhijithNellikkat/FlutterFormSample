// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color color, textColor;

  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: press,
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
