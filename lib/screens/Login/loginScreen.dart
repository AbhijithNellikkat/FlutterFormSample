// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project_task7/screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: LoginBody(),
      ),
    );
  }
}
