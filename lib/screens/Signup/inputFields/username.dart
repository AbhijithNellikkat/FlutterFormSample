import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class BuildUsername extends StatelessWidget {
  final String labelText;
  final IconData icon;

  const BuildUsername({
    super.key,
    required this.labelText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(
          icon,
        ),
        prefixIconColor: kPrimaryColor,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your username';
        } else if (value.length < 4) {
          return 'Too short username. choose a username \nwith 4 or more characters';
        } else {
          return null;
        }
      },
    );
  }
}
