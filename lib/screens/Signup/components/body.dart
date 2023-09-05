import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_task7/Widgets/alreadyHaveAnAccountCheck.dart';
import 'package:project_task7/Widgets/roundedButton.dart';
import 'package:project_task7/constants.dart';
import 'package:project_task7/screens/Signup/components/background.dart';
import 'package:project_task7/screens/Signup/formSubmitdelaypopup.dart';
import 'package:project_task7/screens/Signup/inputFields/email.dart';
import 'package:project_task7/screens/Signup/inputFields/password.dart';
import 'package:project_task7/screens/Signup/inputFields/phoneNumber.dart';
import 'package:project_task7/screens/Signup/inputFields/username.dart';

final formKey = GlobalKey<FormState>();

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              signupSvg,
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.01),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    const BuildUsername(
                      labelText: "Username",
                      icon: Icons.person,
                    ),
                    SizedBox(height: size.height * 0.02),
                    const BuildEmail(
                      labelText: "Email",
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 15),
                    const BuildPhoneNumber(
                      labelText: "PhoneNumber",
                      icon: Icons.phone,
                    ),
                    SizedBox(height: size.height * 0.01),
                    const BuildPassword(
                      labelText: "Password",
                      icon: Icons.fingerprint,
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              child: RoundedButton(
                text: "SIGN UP",
                press: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  final isValid = formKey.currentState!.validate();
                  if (isValid) {
                    showDialog(
                      context: context,
                      builder: (context) => FormSubmitAlert(formkey: formKey),
                    );
                  }
                },
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 10),
              child: AlreadyHaveAnAccountCheck(
                press: () {},
                login: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
