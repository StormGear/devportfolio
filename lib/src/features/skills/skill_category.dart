import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';
// import 'package:portfolio/presentation/scroller.dart';
// import 'package:task_buddy/src/features/core/presentation/screens/dashboard/controllers/slider_page_controller.dart';

class SkillCategory extends StatefulWidget {
  const SkillCategory({super.key});

  @override
  SkillCategoryState createState() => SkillCategoryState();
}

class SkillCategoryState extends State<SkillCategory> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    final SliderPageController controller = SliderPageController.instance;
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          const Center(
            child: Text("My Skills",
                textScaler: TextScaler.linear(1.5),
                style: TextStyle(color: Colors.lightBlue)),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.changeIndex(0);
                      controller.nextPage(controller.pageController, 0);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                SliderPageController.instance.currentIndex == 0
                                    ? Colors.white
                                    : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Technical Skills',
                        textScaler: TextScaler.linear(1),
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeIndex(1);
                      controller.nextPage(
                          SliderPageController.instance.pageController, 1);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                SliderPageController.instance.currentIndex == 1
                                    ? Colors.white
                                    : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Non-Technical Skills',
                        textScaler: TextScaler.linear(1),
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
