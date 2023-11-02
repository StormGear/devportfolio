import 'package:flutter/material.dart';
import 'package:portfolio/data/information.dart';
import 'package:portfolio/src/features/education/education_card.dart';
import 'package:portfolio/src/features/work/work_card.dart';
import 'package:portfolio/services/responsive_widget.dart';

class WorkAndEducation extends StatelessWidget {
  const WorkAndEducation({super.key});

  // work experience on smallscreen
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
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    WorkCardSmall(
                      size: size,
                      work: experiences[index],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );

  // education on smallscreen
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
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: schools.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    EducationCardSmall(
                      size: size,
                      school: schools[index],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      );

  // work experience on largescreen
  Flexible workExperienceLarge(Size size) => Flexible(
        child: Padding(
          padding: EdgeInsets.only(left: size.height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Work Experience',
                  textScaleFactor: 1.5,
                  style: TextStyle(color: Colors.lightBlue)),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      WorkCardLarge(
                        size: size,
                        work: experiences[index],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      );

  // education on largescreen
  Flexible educationLarge(Size size) => Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Education',
                textScaleFactor: 1.5,
                style: TextStyle(color: Colors.lightBlue)),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: schools.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    EducationCardLarge(
                      size: size,
                      school: schools[index],
                    ),
                  ],
                );
              },
            ),
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
