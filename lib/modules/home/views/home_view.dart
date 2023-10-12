import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/modules/bodyPart/views/body_part_view.dart';
import 'package:fitness_app/modules/equipment/views/equipment_view.dart';
import 'package:fitness_app/modules/home/controllers/home_controller.dart';
import 'package:fitness_app/modules/target/views/target_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          body: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                BodyPartView(),
                EquipmentView(),
                TargetView(),
              ]),
          extendBody: true,
          bottomNavigationBar: AnimatedNotchBottomBar(
            /// Provide NotchBottomBarController
            notchBottomBarController: controller.notchBottomBarController,
            color: Colors.white,
            showLabel: false,
            notchColor: Colors.black87,
            removeMargins: false,
            bottomBarWidth: 500,
            durationInMilliSeconds: 300,
            bottomBarItems: const [
              BottomBarItem(
                inActiveItem: Icon(
                  Icons.home_filled,
                  color: Colors.blueGrey,
                ),
                activeItem: Icon(
                  Icons.home_filled,
                  color: Colors.blueAccent,
                ),
                itemLabel: 'Page 1',
              ),
              BottomBarItem(
                inActiveItem: Icon(
                  Icons.star,
                  color: Colors.blueGrey,
                ),
                activeItem: Icon(
                  Icons.star,
                  color: Colors.blueAccent,
                ),
                itemLabel: 'Page 2',
              ),
              BottomBarItem(
                inActiveItem: Icon(
                  Icons.star,
                  color: Colors.blueGrey,
                ),
                activeItem: Icon(
                  Icons.star,
                  color: Colors.blueAccent,
                ),
                itemLabel: 'Page 2',
              ),
            ],
            onTap: (index) {
              controller.pageController.jumpToPage(index);
            },
          ),
        );
      },
    );
  }
}
