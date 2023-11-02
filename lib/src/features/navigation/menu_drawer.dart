import 'package:flutter/material.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
// import 'package:portfolio/screens/profile_page.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({
    super.key,
    required this.size,
    this.aboutLocation,
    this.workLocation,
    this.skillsLocation,
  });

  final double? workLocation;
  final double? skillsLocation;
  final double? aboutLocation;
  final Size size;
  final ScrollController scrollController =
      SliderPageController.instance.scrollController;
  final SliderPageController sliderPageController =
      SliderPageController.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightBlue[300],
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ListTile(
            title: const Text(
              "About",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              sliderPageController.scrollTo(scrollController, aboutLocation!);
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          ListTile(
            title: const Text(
              "Skills",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              sliderPageController.scrollTo(scrollController, skillsLocation!);
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          ListTile(
            title: const Text(
              "Work",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              sliderPageController.scrollTo(scrollController, workLocation!);
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
        ],
      ),
    );
  }
}
