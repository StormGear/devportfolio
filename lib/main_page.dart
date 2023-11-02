import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
import 'package:portfolio/src/features/about/about_section.dart';
import 'package:portfolio/src/features/profile_info/name.dart';
import 'package:portfolio/src/features/navigation/navbar.dart';
import 'package:portfolio/src/features/profile_info/profile_info.dart';
import 'package:portfolio/services/responsive_widget.dart';
import 'package:portfolio/src/features/projects/project_section.dart';
import 'package:portfolio/src/features/skills/skills_section.dart';
import 'package:portfolio/src/features/contact/social_info.dart';
import 'package:portfolio/src/features/work/work_experience.dart';
import 'src/features/skills/skill_pages.dart';
import 'src/features/navigation/menu_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const double aboutLocation = 400;
    const double skillsLocation = 800;
    const double workLocation = 1000;
    // const double educationLocation = 900;
    const double projectsLocation = 1800;
    const double contactsLocation = 1900;
    final GlobalKey aboutKey = GlobalKey();

    Get.put<SliderPageController>(SliderPageController());

    return ResponsiveWidget(
      largeScreen: Scaffold(
          backgroundColor: Colors.black,
          drawer: ResponsiveWidget.isSmallScreen(context)
              ? MenuDrawer(
                  size: size,
                  workLocation: workLocation,
                  aboutLocation: aboutLocation,
                  skillsLocation: skillsLocation,
                )
              : null,
          body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                // Customize your header here if needed.
                return <Widget>[
                  SliverAppBar(
                    title: const Papa(),
                    pinned: true, // The app bar remains visible when scrolling.
                    iconTheme: const IconThemeData(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.black,
                    actions: [
                      NavBar(
                        aboutLocation: aboutLocation,
                        skillsLocation: skillsLocation,
                        contactLocation: contactsLocation,
                        workLocation: workLocation,
                        projectsLocation: projectsLocation,
                      )
                    ],
                  ),
                ];
              },
              body: ListView(
                controller: SliderPageController.instance.scrollController,
                children: [
                  ResponsiveWidget(
                    largeScreen: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          const ProfileInfo(),
                          SizedBox(
                            height: size.height * 0.1,
                          ),
                          AboutSection(
                            key: aboutKey,
                          ),
                          SizedBox(
                            height: size.height * 0.08,
                          ),
                          const SkillSection(),
                          // Add the PageView with horizontal scroll.
                          const SkillPages(),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          const WorkAndEducation(),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          const ProjectSection(),
                          const SocialInfo(),
                        ]),
                  )
                ],
              ))),
    );
  }
}
