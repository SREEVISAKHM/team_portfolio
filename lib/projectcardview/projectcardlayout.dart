import 'package:flutter/material.dart';
import 'package:team_portfolio/projectcardview/projectcardmobile.dart';

import 'package:team_portfolio/projectcardview/projectcardweb.dart';
import 'package:team_portfolio/screens/widgets/imagelist.dart';

class ProjectCardLayout extends StatelessWidget {
  const ProjectCardLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 950) {
        return ProjectCardWeb();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 950) {
        return ProjectCardWeb();
      } else {
        return ProjectCardMobile(
          projectName: 'Project Name',
          images: ImageList().images,
        );
      }
    });
  }
}
