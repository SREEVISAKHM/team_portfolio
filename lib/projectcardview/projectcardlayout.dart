import 'package:flutter/material.dart';
import 'package:team_portfolio/projectcardview/projectcardmobile.dart';

import 'package:team_portfolio/projectcardview/projectcardweb.dart';

class ProjectCardLayout extends StatelessWidget {
  final String projectName;

  final List<String> images;
  const ProjectCardLayout({Key key, @required this.projectName, this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return ProjectCardWeb();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 950) {
        return ProjectCardWeb();
      } else {
        return ProjectCardMobile(
          projectName: projectName,
          images: images,
        );
      }
    });
  }
}
