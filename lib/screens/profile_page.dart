import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/name.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/profile_info.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/widgets/social_info.dart';
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
    var socialInfoKey = GlobalKey();

    return ResponsiveWidget(
      largeScreen: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, // Change this color to your desired color
            ),
            leading: const Papa(),
            elevation: 0.0,
            backgroundColor: Colors.black,
            actions: [
              NavBar(
                idKey: socialInfoKey,
              ),
            ],
          ),
          drawer: ResponsiveWidget.isSmallScreen(context)
              ? MenuDrawer(
                  size: size,
                  idKey: socialInfoKey,
                )
              : null,
          body: SingleChildScrollView(
            child: AnimatedPadding(
              duration: const Duration(seconds: 1),
              padding: EdgeInsets.all(size.height * 0.01),
              child: ResponsiveWidget(
                largeScreen: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Papa(),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      const ProfileInfo(),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      const AboutSection(),
                      SizedBox(
                        height: size.height * 0.2,
                      ),
                      SocialInfo(
                        key: socialInfoKey,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
