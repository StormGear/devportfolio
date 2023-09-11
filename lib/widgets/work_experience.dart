import 'package:flutter/material.dart';
import 'package:portfolio/data/information.dart';
import 'package:portfolio/presentation/education_card.dart';
import 'package:portfolio/presentation/work_card.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class WorkAndEducation extends StatelessWidget {
  const WorkAndEducation({super.key});

  // smallscreen
  Padding workExperience(Size size) => Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text('Work Experience',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.lightBlue)),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            WorkCardSmall(
              size: size,
              work: experiences[0],
            )
          ],
        ),
      );

  // smallscreen
  Padding education(Size size) => Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text('Education',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.lightBlue)),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            WorkCardSmall(
              size: size,
              work: experiences[0],
            )
          ],
        ),
      );

  // largescreen
  Flexible workExperienceLarge(Size size) => Flexible(
        // padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Work Experience',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.lightBlue)),
            SizedBox(
              height: size.height * 0.02,
            ),
            WorkCardLarge(
              size: size,
              work: experiences[0],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            WorkCardLarge(
              size: size,
              work: experiences[1],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            WorkCardLarge(
              size: size,
              work: experiences[2],
            ),
          ],
        ),
      );

  // largescreen
  Flexible educationLarge(Size size) => Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Education',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.lightBlue)),
            SizedBox(
              height: size.height * 0.02,
            ),
            EducationCard(
              size: size,
              school: schools[0],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            EducationCard(
              size: size,
              school: schools[1],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            EducationCard(
              size: size,
              school: schools[2],
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          workExperienceLarge(size),
          SizedBox(
            width: size.width * 0.05,
          ),
          educationLarge(size),
        ],
      ),
      smallScreen: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            workExperience(size),
            SizedBox(
              height: size.height * 0.1,
            ),
            education(size),
          ]),
    );
  }
}
