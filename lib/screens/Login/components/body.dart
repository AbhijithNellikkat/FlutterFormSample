import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_task7/Widgets/alreadyHaveAnAccountCheck.dart';
import 'package:project_task7/Widgets/roundedButton.dart';
import 'package:project_task7/constants.dart';
import 'package:project_task7/screens/Login/components/background.dart';
import 'package:project_task7/screens/Signup/inputFields/password.dart';
import 'package:project_task7/screens/Signup/inputFields/username.dart';

class LoginBody extends StatelessWidget {
  final Map<String, dynamic> datas = {};

  LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SvgPicture.asset(
                loginSvg,
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.02),
              BuildUsername(
                labelText: "Username",
                icon: Icons.person,
              ),
              SizedBox(height: size.height * 0.02),
              const BuildPassword(
                labelText: "Password",
                icon: Icons.fingerprint,
              ),
              SizedBox(height: size.height * 0.02),
              RoundedButton(
                text: "LOGIN",
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {},
                login: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
