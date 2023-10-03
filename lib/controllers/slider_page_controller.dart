import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderPageController extends GetxController {
  static SliderPageController get instance => Get.find<SliderPageController>();

  final PageController pageController = PageController();
  final ScrollController scrollController = ScrollController();

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
