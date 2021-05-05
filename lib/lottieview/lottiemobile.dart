import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieMobile extends StatelessWidget {
  const LottieMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Lottie.asset('assets/lottie/coding.json'),
      ),
    );
  }
}
