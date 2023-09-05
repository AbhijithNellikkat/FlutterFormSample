import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class BuildPassword extends StatefulWidget {
  final String labelText;

  final IconData icon;

  const BuildPassword({
    super.key,
    required this.labelText,
    required this.icon,
  });

  @override
  State<BuildPassword> createState() => _BuildPasswordState();
}

class _BuildPasswordState extends State<BuildPassword> {
  bool isPasswordVisible = false;
  // bool isPasswordEightCharacter = false;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, obscure) {
        return Column(
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              // onChanged: (password) => OnPasswordChanged(password),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: widget.labelText,
                prefixIcon: Icon(
                  widget.icon,
                ),
                prefixIconColor: kPrimaryColor,
                suffixIcon: IconButton(
                  onPressed: () {
                    obscure(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
              obscureText: isPasswordVisible,
              validator: (value) {
                final regExp = RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (!regExp.hasMatch(value)) {
                  return "* should contain at least one upper case \n* should contain at least one lower case \n* should contain at least one digit \n* should contain at least one Special character \n* Must be at least 8 characters in length ";
                } else {
                  return null;
                }
              },
            ),
            // Row(
            //   children: [
            //     AnimatedContainer(
            //       duration: const Duration(milliseconds: 500),
            //       width: 20,
            //       height: 20,
            //       decoration: BoxDecoration(
            //         color: isPasswordEightCharacter
            //             ? Colors.green
            //             : Colors.transparent,
            //         border: isPasswordEightCharacter
            //             ? Border.all(color: Colors.transparent)
            //             : Border.all(color: Colors.grey.shade400),
            //         borderRadius: BorderRadius.circular(50),
            //       ),
            //       child: const Center(
            //         child: Icon(
            //           Icons.check,
            //           color: Colors.white,
            //           size: 15,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 10),
            //     Text("Contains at least 8 characters ")
            //   ],
            // ),
          ],
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
//   OnPasswordChanged(String password) {
//     setState(() {
//       isPasswordEightCharacter = false;
//       if (password.length >= 8) {
//         isPasswordEightCharacter = true;
//       }
//     });
//   }
// }
}
