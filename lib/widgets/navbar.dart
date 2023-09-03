import 'package:flutter/material.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
// import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/navbutton.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class NavBar extends StatelessWidget {
  NavBar(
      {super.key,
      this.contactLocation,
      this.skillsLocation,
      this.aboutLocation});

  final double? contactLocation;
  final double? skillsLocation;
  final double? aboutLocation;

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
                text: "Contact",
                onPressed: () {
                  sliderPageController.scrollTo(
                      scrollController, contactLocation!);
                },
              ),
            ),
          ])
      ],
    ));
  }
}
