import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/modules/bodyPart/controllers/body_part_controller.dart';
import 'package:fitness_app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyPartView extends GetView<BodyPartController> {
  const BodyPartView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Body Part",
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.yellow,
            child: const Center(
              child: Text('BodyPartView 1'),
            ),
          ),
        );
      },
    );
  }
}
