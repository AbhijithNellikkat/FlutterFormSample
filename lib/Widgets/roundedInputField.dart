import 'package:flutter/material.dart';
import 'package:project_task7/Widgets/textFieldContainer.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    required this.hintText,
    required this.icon,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
