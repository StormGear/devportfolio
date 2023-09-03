import 'package:flutter/material.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/strings/image_strings.dart';

class SkillPages extends StatelessWidget {
  const SkillPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set a fixed height for the PageView.
      child: PageView(
        controller: SliderPageController.instance.pageController,
        onPageChanged: (index) {
          SliderPageController.instance.changeIndex(index);
          // print("Page index = $index");
        },
        scrollDirection: Axis.horizontal, // Horizontal scroll direction.
        children: [
          // Add your PageView pages here.
          Container(
              color: Colors.black,
              child: ListView.builder(
                itemCount: skills.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          skills[index].icon,
                          const SizedBox(
                            height: 8.0,
                          ),
                          Expanded(
                              child: Text(
                            skills[index].skillname,
                            style: const TextStyle(color: Colors.white),
                          ))
                        ],
                      )),
                ),
              )),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text('Page 2'),
            ),
          ),
        ],
      ),
    );
  }
}

List<SkillModel> skills = [
  SkillModel(
      icon: Image.asset(
        flutterLogo,
        height: 35,
      ),
      skillname: "flutter"),
];
