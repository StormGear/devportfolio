import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/models/education_model.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/models/work_model.dart';
// import 'package:portfolio/presentation/education_card.dart';
import 'package:portfolio/strings/image_strings.dart';

/// My work experience information
final List<WorkModel> experiences = [
  const WorkModel(
      companyName: "Asustem Robotics",
      period: "July - August, 2023",
      companyLogo: 'assets/images/asustem.jpg',
      role: "Robotics Instructor Intern"),
];

/// My skills information
List<SkillModel> skills = [
  SkillModel(
      icon: Image.asset(
        flutterLogo,
        height: 35,
      ),
      skillname: "flutter"),
  SkillModel(
      icon: SvgPicture.asset(
        pythonLogo,
        height: 35,
      ),
      skillname: "Python"),
  SkillModel(
      icon: SvgPicture.asset(
        javascriptLogo,
        height: 35,
      ),
      skillname: "JavaScript"),
  SkillModel(
      icon: SvgPicture.asset(
        postgresqlLogo,
        height: 35,
      ),
      skillname: "PostgreSql"),
  SkillModel(
      icon: SvgPicture.asset(
        gitLogo,
        height: 35,
      ),
      skillname: "Git"),
  SkillModel(
      icon: SvgPicture.asset(
        arduinoLogo,
        height: 35,
      ),
      skillname: "Arduino"),
  SkillModel(
      icon: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: SvgPicture.asset(
          githubLogo,
          height: 35,
        ),
      ),
      skillname: "GitHub"),
  SkillModel(
      icon: SvgPicture.asset(
        matlabLogo,
        height: 35,
      ),
      skillname: "Matlab"),
];

/// My education information
List<EducationModel> schools = [
  const EducationModel(
      schoolName: "Academic City University College",
      period: "January 2021 - present",
      companyLogo: "assets/logos/acity.png"),
  const EducationModel(
      schoolName: "Achimota School", period: "October 2018 - November 2021"),
  const EducationModel(
      schoolName: "Rockies International School",
      period: "October 2012 - June 2018"),
];
