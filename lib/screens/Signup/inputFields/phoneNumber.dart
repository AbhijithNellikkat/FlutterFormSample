import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class BuildPhoneNumber extends StatelessWidget {
  final String labelText;
  final IconData icon;
  const BuildPhoneNumber({
    super.key,
    required this.labelText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 10,
      // controller: phoneNumberController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hoverColor: Colors.orange,
        prefixIcon: Icon(
          Icons.phone,
        ),
        prefixIconColor: kPrimaryColor,
        labelText: "Phone number",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your phone number";
        } else if (value.length != 10) {
          return "Please enter your valid phone number";
        }

        return null;
      },
    );
  }
}
