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
  final List<Widget> _screens = [
    const ScheduledScreen(),
    const CompletedScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    final SliderPageController _controller = SliderPageController.instance;
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      // width: size.width,
      // height: size.height * 0.2,
      child: Column(
        children: [
          const Center(
            child: Text("My Skills"),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.changeIndex(0);
                      _controller.nextPage(_controller.pageController, 0);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                SliderPageController.instance.currentIndex == 0
                                    ? Colors.red
                                    : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Technical Skills',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.changeIndex(1);
                      _controller.nextPage(
                          SliderPageController.instance.pageController, 1);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                SliderPageController.instance.currentIndex == 1
                                    ? Colors.red
                                    : Colors.transparent,
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Non-Technical Skills',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
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

class ScheduledScreen extends StatelessWidget {
  const ScheduledScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      // width: size.width,
      height: size.height * 0.5,
      child: const Center(
        child: Text('Scheduled Screen'),
      ),
    );
  }
}

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      // width: size.width,
      height: size.height * 0.5,
      child: const Center(
        child: Text('Completed Screen'),
      ),
    );
  }
}
