import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentView extends GetView<HomeController> {
  const EquipmentView({super.key});

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
              "Equipment",
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.green,
            child: const Center(
              child: Text('Equipmentt 1'),
            ),
          ),
        );
      },
    );
  }
}