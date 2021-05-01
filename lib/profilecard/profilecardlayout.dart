import 'package:flutter/material.dart';
import 'package:team_portfolio/profilecard/profilecardmobile.dart';
import 'package:team_portfolio/profilecard/profilecardweb.dart';

class ProfileCardLayout extends StatelessWidget {
  const ProfileCardLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return ProfileCardWeb();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 950) {
        return ProfileCardWeb();
      } else {
        return ProfileCardMobile();
      }
    });
  }
}
