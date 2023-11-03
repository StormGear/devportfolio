import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/src/features/education/education_model.dart';
import 'package:portfolio/src/features/projects/project_model.dart';
import 'package:portfolio/src/features/skills/skill_model.dart';
import 'package:portfolio/src/features/work/work_model.dart';
// import 'package:portfolio/presentation/education_card.dart';
import 'package:portfolio/strings/image_strings.dart';

/// My work experience information
final List<WorkModel> experiences = [
  const WorkModel(
      companyName: "Asustem Robotics/Lenovo",
      period: "July - August, 2023",
      companyLogo: 'assets/images/asustem.jpg',
      role: "Robotics/IoT Instructor Intern",
      description:
          "- Introducing and tutoring modules in Arduino\nprogramming to young and working adults.",
      urlAuthority: "asustemrobotics.org",
      urlPath: "/index.html"),
  const WorkModel(
      companyName: "Google Developer Student Clubs - ACity",
      period: "July 2023 - Present",
      role: "GDSC Lead",
      urlAuthority: "gdsc.community.dev",
      urlPath: "/academic-city-university-college/"),
  const WorkModel(
      companyName: "Techten Planet GH",
      period: "June - July 2023",
      role: "Mobile Developer Intern",
      urlAuthority: "techtenplanet.org",
      urlPath: ""),
  const WorkModel(
      companyName: "BuildLab Africa",
      period: "January - April 2023",
      role: "Frontend Developer Intern",
      urlAuthority: "buildlabafrica.org",
      urlPath: ""),
  const WorkModel(
      companyName: "Datasus Technologies",
      period: "December 2022 - Present",
      role: "Social Media Manager",
      urlAuthority: "linkedin.com",
      urlPath: "/company/datasus-tech/"),
];

/// My skills information
List<SkillModel> skills = [
  SkillModel(
      icon: Image.asset(
        flutterLogo,
        height: 35,
      ),
      skillname: "Flutter"),
  SkillModel(
      icon: SvgPicture.asset(
        firebaseLogo,
        height: 35,
      ),
      skillname: "Firebase"),
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
    schoolName: "Academic City University",
    period: "January 2021 - present",
    companyLogo: "assets/logos/acity.png",
    course: "Computer Engineering",
    urlAuthority: "acity.edu.gh",
    urlPath: "",
  ),
  const EducationModel(
      schoolName: "Achimota School",
      period: "October 2018 - November 2021",
      awards: true,
      urlAuthority: "en.wikipedia.org",
      urlPath: "/wiki/Achimota_School",
      awardDescription:
          "- Larry Cobbson's Award for the Best Student in Biology\n- The Sodokeh Families Award for Obtaining 7As"),
  const EducationModel(
      schoolName: "Rockies International School",
      period: "March 2012 - June 2018",
      urlAuthority: "ris.edu.gh",
      urlPath: ""),
];

/// My projects information
final List<ProjectModel> projects = [
  ProjectModel(
      // image: "assets/images/taskyy.png",
      projectName: "Taskyy",
      projectDescription: "A minimalistic to-do app built with flutter",
      urlAuthority: "github.com",
      urlPath: "/Boahen123/taskyy"),
  ProjectModel(
      // image: "assets/images/id_card.png",
      projectName: "Identity Card",
      projectDescription:
          "A digital identity card displaying my contact information.",
      urlAuthority: "github.com",
      urlPath: "/Boahen123/id_card_app"),
  ProjectModel(
      // image: "assets/images/world_time.png",
      projectName: "World Time",
      projectDescription:
          "Check the time of various select cities, built with Flutter.",
      urlAuthority: "github.com",
      urlPath: "/Boahen123/world_time"),
  ProjectModel(
      // image: "assets/images/qr_code_gen.png",
      projectName: "QR Code Generator",
      projectDescription:
          "Use the segno python library as well as the Google Chart API to generate QR code.",
      urlAuthority: "gitlab.com",
      urlPath: "/papakofi/qr-code-generator"),
  ProjectModel(
      image: "assets/images/Circuit_diagram.png",
      projectName: "Basic Logic Gates",
      projectDescription:
          "Build and/or simulate basic logic gates using Arduino.",
      urlAuthority: "github.com",
      urlPath: "https://github.com/Boahen123/BasicLogicGates"),
];
