import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_task7/constants.dart';
import 'package:project_task7/screens/Signup/signupScreen.dart';
import 'package:project_task7/screens/welcome/components/background.dart';
import '../../../Widgets/roundedButton.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(height: 12),
            const Text(
              "WELCOME TO MY APP",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Caveat-VariableFont"),
            ),
            SizedBox(height: size.height * 0.6),
            // SvgPicture.asset(
            //   chatSvg,
            //   height: size.height * 0.45,
            // ),
            // SizedBox(height: size.height * 0.05),
            // RoundedButton(
            //   color: kPrimaryColor,
            //   text: "LOGIN",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const LoginScreen(),
            //       ),
            //     );
            //   },
            //   textColor: Colors.white,
            // ),
            RoundedButton(
              color: Color.fromARGB(213, 11, 85, 197),
              text: "SIGN UP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
