import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     mainTopImg,
          //     width: size.width * 0.3,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset(
          //     mainBottomImg,
          //     width: size.width * .2,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Lottie.network(
                "https://assets1.lottiefiles.com/packages/lf20_nc1bp7st.json"),
          ),
          child,
        ],
      ),
    );
  }
}
