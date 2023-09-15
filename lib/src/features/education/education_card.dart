import 'package:flutter/material.dart';
import 'package:portfolio/services/launcher.dart';
import 'package:portfolio/src/features/education/education_model.dart';

class EducationCardLarge extends StatelessWidget {
  const EducationCardLarge({
    super.key,
    required this.size,
    required this.school,
  });

  final Size size;
  final EducationModel school;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
        border: Border.all(color: Colors.lightBlue),
      ),
      width: size.width * 0.4,
      height: (school.awardDescription == null
          ? (school.awards == null ? size.height * 0.2 : size.height * 0.3)
          : size.height * 0.25),
      child: Card(
        color: Colors.transparent,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          school.companyLogo == null
              ? const Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                      image: school.companyLogo == null
                          ? null
                          : DecorationImage(
                              image: AssetImage("${school.companyLogo}"),
                              fit: BoxFit.fill),
                      shape: BoxShape.circle),
                  width: size.width * 0.1,
                  height: size.width * 0.08,
                  child: const Text(''),
                ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              TextButton(
                onPressed: () async {
                  if (school.urlAuthority != null && school.urlPath != null) {
                    await Launcher.launch(
                        school.urlAuthority, school.urlPath, school.secure);
                  }
                },
                child: Text(
                  school.schoolName,
                  softWrap: true,
                  textScaleFactor: 1.2,
                  style: const TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ),
              Text(school.period,
                  textScaleFactor: 1,
                  style: const TextStyle(color: Colors.white)),
              SizedBox(
                height: size.height * 0.01,
              ),
              school.awards == true
                  ? Column(
                      children: [
                        const Text("Awards",
                            textScaleFactor: 0.9,
                            style: TextStyle(color: Colors.white)),
                        Text("${school.awardDescription}",
                            textScaleFactor: 0.8,
                            softWrap: true,
                            style: const TextStyle(color: Colors.white))
                      ],
                    )
                  : const Text("")
            ],
          )
        ]),
      ),
    );
  }
}

class EducationCardSmall extends StatelessWidget {
  const EducationCardSmall({
    super.key,
    required this.size,
    required this.school,
  });

  final Size size;
  final EducationModel school;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
        border: Border.all(color: Colors.lightBlue),
      ),
      width: size.width,
      height: (school.awardDescription == null
          ? school.awards == null
              ? size.height * 0.12
              : size.height * 0.15
          : size.height * 0.2),
      child: Card(
        color: Colors.transparent,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          school.companyLogo == null
              ? const Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                      image: school.companyLogo == null
                          ? null
                          : DecorationImage(
                              image: AssetImage("${school.companyLogo}"),
                              fit: BoxFit.fill),
                      shape: BoxShape.circle),
                  width: size.width * 0.25,
                  height: size.width * 0.2,
                  child: const Text(''),
                ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              TextButton(
                onPressed: () async {
                  if (school.urlAuthority != null && school.urlPath != null) {
                    await Launcher.launch(
                        school.urlAuthority, school.urlPath, school.secure);
                  }
                },
                child: Text(
                  school.schoolName,
                  softWrap: true,
                  textScaleFactor: 1.2,
                  style: const TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ),
              Text(school.period,
                  textScaleFactor: 1,
                  style: const TextStyle(color: Colors.white)),
              school.awards == true
                  ? Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Text("Awards",
                            textScaleFactor: 0.9,
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text("${school.awardDescription}",
                            textScaleFactor: 0.8,
                            softWrap: true,
                            style: const TextStyle(color: Colors.white))
                      ],
                    )
                  : const Text("")
            ],
          )
        ]),
      ),
    );
  }
}
