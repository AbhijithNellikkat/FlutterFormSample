import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class BuildEmail extends StatelessWidget {
  final String labelText;
  final IconData icon;
  const BuildEmail({
    super.key,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // controller: emailController,
      decoration:  InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          icon,
        ),
        prefixIconColor: kPrimaryColor,
      ),
      validator: (value) {
        final regExp = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
        if (value == null || value.isEmpty) {
          return 'Please enter your email address';
        } else if (!regExp.hasMatch(value)) {
          return "Please enter your valid email address";
        } else {
          return null;
        }
      },
    );
  }
}
