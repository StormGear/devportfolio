import 'package:flutter/material.dart';
import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/navbutton.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

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
        const Papa(),
        if (!ResponsiveWidget.isSmallScreen(context))
          Row(children: [
            // NavButton(
            //   text: "About",
            //   onPressed: () {},
            // ),
            // SizedBox(
            //   width: size.width * 0.01,
            // ),
            // NavButton(
            //   text: "Projects",
            //   onPressed: () {},
            // ),
            SizedBox(
              width: size.width * 0.01,
            ),
            NavButton(
              text: "Contact",
              onPressed: () {},
            ),
          ])
      ],
    ));
  }
}
