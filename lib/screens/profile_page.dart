import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/profile_info.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/widgets/social_info.dart';

import '../widgets/menu_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ResponsiveWidget(
      largeScreen: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, // Change this color to your desired color
            ),
            elevation: 0.0,
            backgroundColor: Colors.black,
          ),
          drawer: ResponsiveWidget.isSmallScreen(context)
              ? MenuDrawer(size: size)
              : null,
          body: SingleChildScrollView(
            child: AnimatedPadding(
              duration: const Duration(seconds: 1),
              padding: EdgeInsets.all(size.height * 0.05),
              child: ResponsiveWidget(
                largeScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const NavBar(),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      const ProfileInfo(),
                      SizedBox(
                        height: size.height * 0.2,
                      ),
                      const SocialInfo(),
                    ]),
              ),
            ),
          )),
    );
  }
}
