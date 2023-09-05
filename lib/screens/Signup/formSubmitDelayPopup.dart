// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class FormSubmitAlert extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final formkey;
  const FormSubmitAlert({
    required this.formkey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: submitForm(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: kPrimaryColor,
                ),
              ),
            ],
          );
        } else {
          if (snapshot.hasData && snapshot.data == true) {
            return AlertDialog(
              elevation: 10,
              title: const Text("Welcome"),
              content: const Text("User Signup Successfully"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    formkey.currentState!.reset();
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      kPrimaryColor,
                    ),
                  ),
                  child: const Text("OK"),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Failed to submit the form."),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OK"),
                ),
              ],
            );
          }
        }
      },
    );
  }

  Future<bool> submitForm() async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
