import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:portfolio/data/information.dart';
import 'package:portfolio/services/launcher.dart';

class ProjectsLarge extends StatelessWidget {
  const ProjectsLarge({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Center(
        child: Text("My Projects",
            textScaler: TextScaler.linear(1.5), style: TextStyle(color: Colors.lightBlue)),
      ),
      SizedBox(
        height: size.height * 0.01,
      ),
      Container(
        height: size.height * 0.5,
        decoration: const BoxDecoration(color: Colors.black),
        child: ListView.builder(
            itemCount: projects.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FittedBox(
                    alignment: Alignment.topCenter,
                    child: Container(
                        width: size.width * 0.2,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            projects[index].image == null
                                ? const SizedBox()
                                : Container(
                                    padding: const EdgeInsets.all(8),
                                    child: AspectRatio(
                                        aspectRatio: 12 / 5,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "${projects[index].image}",
                                            fit: BoxFit.fill,
                                          ),
                                        ))),
                            projects[index].image == null
                                ? const SizedBox(
                                    height: 20,
                                  )
                                : const SizedBox(),
                            TextButton(
                              onPressed: () async {
                                if (projects[index].urlAuthority != null &&
                                    projects[index].urlPath != null) {
                                  await Launcher.launch(
                                      projects[index].urlAuthority,
                                      projects[index].urlPath,
                                      true);
                                }
                              },
                              child: Text(
                                projects[index].projectName,
                                softWrap: true,
                                textScaler: const TextScaler.linear(0.8),
                                style: const TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              projects[index].projectDescription,
                              softWrap: true,
                              textScaler: const TextScaler.linear(0.6),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                          ],
                        )),
                  ),
                )),
      )
    ]);
  }
}
