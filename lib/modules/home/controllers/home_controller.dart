import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final pageController = PageController(initialPage: 0);
  final notchBottomBarController = NotchBottomBarController(index: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
