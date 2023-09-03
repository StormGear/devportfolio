import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/profile_info.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/widgets/skills_section.dart';
import 'package:portfolio/widgets/social_info.dart';
import '../presentation/skill_pages.dart';
import '../widgets/menu_drawer.dart';

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
    const double skillsLocation = 900;
    const double contactLocation = 1000;
    final GlobalKey aboutKey = GlobalKey();

    Get.put<SliderPageController>(SliderPageController());

    return ResponsiveWidget(
      largeScreen: Scaffold(
          backgroundColor: Colors.black,
          drawer: ResponsiveWidget.isSmallScreen(context)
              ? MenuDrawer(
                  size: size,
                )
              : null,
          body: NestedScrollView(
            // controller: scroller,
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
                      contactLocation: contactLocation,
                    )
                  ],
                ),
              ];
            },
            body: SingleChildScrollView(
              controller: SliderPageController.instance.scrollController,
              child: AnimatedPadding(
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(size.height * 0.01),
                child: ResponsiveWidget(
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
                          height: size.height * 0.2,
                        ),
                        const SkillSection(),
                        // Add the PageView with horizontal scroll.
                        const SkillPages(),
                        const SocialInfo(),
                      ]),
                ),
              ),
            ),
          )),
    );
  }
}
