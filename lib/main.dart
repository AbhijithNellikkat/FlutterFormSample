import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';
import 'package:project_task7/screens/welcome/welcomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const WelcomeScreen()
    ),
  );
}
