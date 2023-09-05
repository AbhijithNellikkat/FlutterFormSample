import 'package:flutter/material.dart';
import 'package:project_task7/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              mainTopImg,
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              loginBottomImg,
              width: size.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
