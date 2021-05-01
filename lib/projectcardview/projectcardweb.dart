import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/widgets/imagelist.dart';
import 'package:team_portfolio/screens/widgets/projectcard.dart';

class ProjectCardWeb extends StatelessWidget {
  const ProjectCardWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProjectCard(
      projectName: 'Project Name',
      images: ImageList().images,
    );
  }
}
