import 'package:flutter/material.dart';
import 'package:portfolio/data/information.dart';

class ProjectsSmall extends StatelessWidget {
  const ProjectsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Center(
        child: Text("My Projects",
            textScaleFactor: 1.3, style: TextStyle(color: Colors.lightBlue)),
      ),
      SizedBox(
        height: size.height * 0.01,
      ),
      Container(
        height: size.height * 0.32,
        // width: size.width * 0.2,
        decoration: const BoxDecoration(color: Colors.black),
        child: ListView.builder(
            itemCount: projects.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          if (projects[index].image != null)
                            Container(
                                padding: const EdgeInsets.all(8),
                                child: AspectRatio(
                                    aspectRatio: 12 / 5,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "${projects[index].image}",
                                        fit: BoxFit.fill,
                                      ),
                                    ))),
                          if (projects[index].image == null)
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                          Text(
                            projects[index].projectName,
                            softWrap: true,
                            style: const TextStyle(color: Colors.lightBlue),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Flexible(
                            child: Text(
                              projects[index].projectDescription,
                              softWrap: true,
                              style: const TextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                        ],
                      )),
                )),
      )
    ]);
  }
}
