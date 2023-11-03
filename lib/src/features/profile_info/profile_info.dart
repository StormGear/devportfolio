import 'package:flutter/material.dart';
import 'package:portfolio/strings/image_strings.dart';
// import 'package:portfolio/strings/main_content.dart';
import 'package:portfolio/src/features/contact/quick_contact.dart';
import 'package:portfolio/services/responsive_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  AnimatedContainer profilePhoto(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      margin: ResponsiveWidget.isSmallScreen(context)
          ? EdgeInsets.only(bottom: size.height * 0.05)
          : null,
      duration: const Duration(seconds: 1),
      height: ResponsiveWidget.isSmallScreen(context)
          ? size.height * 0.29
          : size.width * 0.29,
      width: ResponsiveWidget.isSmallScreen(context)
          ? size.height * 0.29
          : size.width * 0.20,
      decoration: const BoxDecoration(
        backgroundBlendMode: BlendMode.luminosity,
        color: Colors.lightBlue,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(papakofi),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding profileData(Size size) => Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello there! My name is",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.lightBlue,
                )),
            const Text(
              "Papa Kofi Boahen",
              textScaleFactor: 1.5,
              style: TextStyle(
                  color: Colors.lightBlue, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('I am a'),
                  ],
                  repeatForever: true,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                    color: Colors.white, fontSize: 20),
                child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                  TypewriterAnimatedText(
                    'Mobile Developer',
                    speed: const Duration(milliseconds: 50),
                  ),
                  TypewriterAnimatedText('GDSC Lead at ACity',
                      speed: const Duration(milliseconds: 50)),
                  TypewriterAnimatedText('CE Student',
                      speed: const Duration(milliseconds: 50)),
                ]),
              ),
            ]),
            const SizedBox(height: 20),
            const QuickContact()
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
        ),
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
