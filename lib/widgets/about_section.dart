import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  AnimatedContainer illustrationImage(BuildContext context) {
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
      child: SvgPicture.asset(
        'assets/images/about.svg',
        // height: size.height * 0.29,
      ),
    );
  }

  Padding profileData(Size size) => const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                children: [
                  Text("About Papa Kofi",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: Colors.lightBlue,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("I am a ",
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.lightBlue,
                          )),
                      Text(
                        "Student",
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "A Google Developer Student Club (GDSC) lead at "
                      "Academic City University passionate about app "
                      "development with flutter.\n",
                      softWrap: true,
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
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
        ),
      );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Container(
        width: size.width,
        // height: size.height * 0.2,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(width: 3.0, color: Colors.black),
                bottom: BorderSide(width: 3.0, color: Colors.black))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: profileData(size)),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.1,
            ),
            Expanded(flex: 2, child: illustrationImage(context)),
          ],
        ),
      ),
      smallScreen: Container(
        width: size.width,
        // height: size.height * 0.2,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(width: 3.0, color: Colors.black),
                bottom: BorderSide(width: 3.0, color: Colors.black))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 10,
              ),
              profileData(size),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.1,
              ),
              illustrationImage(context),
            ]),
      ),
    );
  }
}
