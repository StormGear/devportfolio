import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  static ThemeController get instance => Get.find<ThemeController>();

  final PageController pageController = PageController();
  final ScrollController scrollController = ScrollController();
  final Color lightTextColorBlue = Colors.lightBlue;
  final Color lightTextColorBlack = Colors.black;
  final Rx<Color> darkTextColorWhite = Colors.white.obs;
  final Color darkTextColor = Colors.lightBlue;

  final Color lightContainerColor = Colors.white12;
  final Color darkContainerColor = Colors.black;

  final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void changeIndex(int index) {
    _currentIndex.value = index;
  }

  void nextPage(PageController pageController, int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  void scrollTo(ScrollController scrollController, double offset) {
    scrollController.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }
}
