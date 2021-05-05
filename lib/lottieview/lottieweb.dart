import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWeb extends StatelessWidget {
  const LottieWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        child: Lottie.asset('assets/lottie/coding.json'),
      ),
    );
  }
}
