import 'package:flutter/material.dart';
import 'package:portfolio/models/education_model.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
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
      height: size.height * 0.2,
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
              Text(
                school.schoolName,
                textScaleFactor: 1.2,
                style: const TextStyle(color: Colors.white),
              ),
              Text(school.period,
                  textScaleFactor: 1,
                  style: const TextStyle(color: Colors.white)),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text("Activity",
                  textScaleFactor: 0.9, style: TextStyle(color: Colors.white)),
              // const Text('Role description',
              //     textScaleFactor: 0.8,
              //     style: TextStyle(color: Colors.white))
            ],
          )
        ]),
      ),
    );
  }
}
