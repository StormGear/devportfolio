import 'package:flutter/material.dart';
import 'package:portfolio/data/information.dart';
import 'package:portfolio/src/features/education/education_card.dart';
import 'package:portfolio/src/features/work/work_card.dart';
import 'package:portfolio/services/responsive_widget.dart';

class WorkAndEducation extends StatelessWidget {
  const WorkAndEducation({super.key});

  // smallscreen
  Padding workExperienceSmall(Size size) => Padding(
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
  Padding educationSmall(Size size) => Padding(
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
          ],
        ),
      );

  // largescreen
  Flexible workExperienceLarge(Size size) => Flexible(
        child: Padding(
          padding: EdgeInsets.only(left: size.height * 0.06),
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
              SizedBox(
                height: size.height * 0.02,
              ),
              WorkCardLarge(
                size: size,
                work: experiences[3],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              WorkCardLarge(
                size: size,
                work: experiences[4],
              ),
            ],
          ),
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
            EducationCardLarge(
              size: size,
              school: schools[0],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            EducationCardLarge(
              size: size,
              school: schools[1],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            EducationCardLarge(
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
            workExperienceSmall(size),
            SizedBox(
              height: size.height * 0.1,
            ),
            educationSmall(size),
          ]),
    );
  }
}
