import 'package:flutter/material.dart';
import 'package:portfolio/controllers/slider_page_controller.dart';

class SkillPages extends StatelessWidget {
  const SkillPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400, // Set a fixed height for the PageView.
      child: PageView(
        controller: SliderPageController.instance.pageController,
        onPageChanged: (index) {
          SliderPageController.instance.changeIndex(index);
          print("Page index = $index");
        },
        scrollDirection: Axis.horizontal, // Horizontal scroll direction.
        children: [
          // Add your PageView pages here.
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 1'),
            ),
          ),
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
