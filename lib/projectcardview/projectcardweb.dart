import 'package:flutter/material.dart';

import 'package:team_portfolio/screens/widgets/projectcard.dart';

class ProjectCardWeb extends StatelessWidget {
  final String projectname;
  final List<String> images;
  const ProjectCardWeb({Key key, this.projectname, this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectCard(
      projectName: projectname,
      images: images,
    );
  }
}
