import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  AnimatedContainer profilePhoto(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: ResponsiveWidget.isSmallScreen(context)
          ? size.height * 0.20
          : size.width * 0.29,
      width: ResponsiveWidget.isSmallScreen(context)
          ? size.height * 0.20
          : size.width * 0.20,
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.lightBlue,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/papakofi.jpg'),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Column profileData(Size size) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi there! My name is",
              textScaleFactor: 2, style: TextStyle(color: Colors.lightBlue)),
          Text(
            "Papa Kofi Boahen",
            textScaleFactor: 2,
            style:
                TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "lorem ipsum dolor sit amet, consectetur\n"
              "adipiscing elit. Sed quis neque eget arcu\n"
              "Sed quis neque eget arcu sodales feugiat.\n",
              softWrap: true,
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //         padding: const EdgeInsets.all(10.0),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         backgroundColor: Colors.red,
          //       ),
          //       child: const Text("Resume"),
          //     ),
          //     SizedBox(width: size.width * 0.01),
          //     OutlinedButton(
          //       onPressed: () {},
          //       style: OutlinedButton.styleFrom(
          //         // foregroundColor: color,
          //         shape: const StadiumBorder(),
          //         side: const BorderSide(color: Colors.red),
          //       ),
          //       child: const Text("Contact Me"),
          //     )
          //   ],
          // )
        ],
      );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profilePhoto(context),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData(size),
        ],
      ),
      smallScreen: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            profilePhoto(context),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.1,
            ),
            profileData(size),
          ]),
    );
  }
}
