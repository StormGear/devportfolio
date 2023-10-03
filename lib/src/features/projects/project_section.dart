import 'package:flutter/material.dart';
import 'package:portfolio/services/responsive_widget.dart';
import 'package:portfolio/src/features/projects/project_large.dart';
import 'package:portfolio/src/features/projects/project_small.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return const ResponsiveWidget(
        largeScreen: ProjectsLarge(), smallScreen: ProjectsSmall());
  }
}
