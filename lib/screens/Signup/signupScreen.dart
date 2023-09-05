import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';
import 'package:project_task7/screens/Signup/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Body(),
      ),
    );
  }
}

