import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/src/features/skills/skill_category.dart';
import 'package:portfolio/services/responsive_widget.dart';

class SkillSection extends StatefulWidget {
  const SkillSection({super.key});

  @override
  State<SkillSection> createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return const ResponsiveWidget(
        largeScreen: SkillCategory(), smallScreen: null);
  }
}
