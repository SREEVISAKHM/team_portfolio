import 'package:flutter/material.dart';
import 'package:team_portfolio/lottieview/lottieweb.dart';

import 'lottiemobile.dart';

class LottieLayout extends StatelessWidget {
  const LottieLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return LottieWeb();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 950) {
        return LottieWeb();
      } else {
        return LottieMobile();
      }
    });
  }
}
