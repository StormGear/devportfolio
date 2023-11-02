import 'package:flutter/material.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
// import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/src/features/navigation/navbutton.dart';
import 'package:portfolio/services/responsive_widget.dart';

class NavBar extends StatelessWidget {
  NavBar(
      {super.key,
      this.contactLocation,
      this.skillsLocation,
      this.aboutLocation,
      this.educationLocation,
      this.workLocation,
      this.projectsLocation});

  final double? contactLocation;
  final double? skillsLocation;
  final double? aboutLocation;
  final double? workLocation;
  final double? educationLocation;
  final double? projectsLocation;

  final ScrollController scrollController =
      SliderPageController.instance.scrollController;
  final SliderPageController sliderPageController =
      SliderPageController.instance;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
        largeScreen: Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!ResponsiveWidget.isSmallScreen(context))
          Row(children: [
            NavButton(
              text: "About",
              onPressed: () {
                sliderPageController.scrollTo(scrollController, aboutLocation!);
              },
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            NavButton(
              text: "Skills",
              onPressed: () {
                sliderPageController.scrollTo(
                    scrollController, skillsLocation!);
              },
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: NavButton(
                text: "Work",
                onPressed: () {
                  sliderPageController.scrollTo(
                      scrollController, workLocation!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: NavButton(
                text: "Projects",
                onPressed: () {
                  sliderPageController.scrollTo(
                      scrollController, projectsLocation!);
                },
              ),
            ),
          ])
      ],
    ));
  }
}
