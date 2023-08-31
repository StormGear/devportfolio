import 'package:flutter/material.dart';
import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/navbutton.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, this.idKey, this.needed});

  final GlobalKey? idKey;
  final bool? needed;

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
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: NavButton(
                text: "Contact",
                onPressed: () {
                  Scrollable.ensureVisible(idKey!.currentContext!,
                      duration: const Duration(seconds: 1));
                },
              ),
            ),
          ])
      ],
    ));
  }
}
