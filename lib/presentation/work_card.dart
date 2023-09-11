import 'package:flutter/material.dart';
import 'package:portfolio/models/work_model.dart';
import 'package:portfolio/services/launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class WorkCardSmall extends StatelessWidget {
  const WorkCardSmall(
      {super.key,
      required this.size,
      required this.work,
      this.width,
      this.height});

  final Size size;
  final WorkModel work;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(size.width * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
        border: Border.all(color: Colors.lightBlue),
      ),
      width: width ?? size.width,
      height: height ?? size.height * 0.2,
      child: Card(
        color: Colors.transparent,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          work.companyLogo == null
              ? const Text('')
              : Padding(
                  padding: EdgeInsets.only(left: size.width * 0.02),
                  child: Container(
                    decoration: BoxDecoration(
                        image: work.companyLogo == null
                            ? null
                            : DecorationImage(
                                image: AssetImage(work.companyLogo!),
                                fit: BoxFit.fill),
                        shape: BoxShape.circle),
                    width: width ?? size.width * 0.25,
                    height: height ?? size.width * 0.25,
                  ),
                ),
          SizedBox(
            width: size.width * 0.15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                work.companyName,
                textScaleFactor: 1.2,
                style: const TextStyle(color: Colors.white),
              ),
              Text(work.period,
                  textScaleFactor: 1,
                  style: const TextStyle(color: Colors.white)),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text("${work.role}",
                  textScaleFactor: 0.9,
                  style: const TextStyle(color: Colors.white)),
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

class WorkCardLarge extends StatelessWidget {
  const WorkCardLarge({super.key, required this.size, required this.work});

  final Size size;
  final WorkModel work;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent,
        border: Border.all(color: Colors.lightBlue),
      ),
      width: size.width * 0.6,
      height: size.height * 0.4,
      child: Card(
        color: Colors.transparent,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          work.companyLogo == null
              ? const Text("")
              : Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                      image: work.companyLogo == null
                          ? null
                          : DecorationImage(
                              image: AssetImage(work.companyLogo!),
                              fit: BoxFit.fill),
                      shape: BoxShape.circle),
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                  child: const Text(''),
                ),
          SizedBox(
            width: size.width * 0.01,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () async {
                  if (work.urlAuthority != null && work.urlPath != null) {
                    await Launcher.launch(work.urlAuthority, work.urlPath);
                  }
                },
                child: Text(
                  work.companyName,
                  softWrap: true,
                  textScaleFactor: 1.2,
                  style: const TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ),
              Text(work.period,
                  textScaleFactor: 1,
                  style: const TextStyle(color: Colors.white)),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text("${work.role}",
                  textScaleFactor: 0.9,
                  softWrap: true,
                  style: const TextStyle(color: Colors.white)),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text("${work.description}",
                  textScaleFactor: 0.8,
                  softWrap: true,
                  style: const TextStyle(color: Colors.white))
            ],
          )
        ]),
      ),
    );
  }
}
