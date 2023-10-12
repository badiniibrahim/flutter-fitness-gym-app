import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/core/utilies/theme.dart';
import 'package:fitness_app/modules/target/controllers/target_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TargetView extends GetView<TargetController> {
  const TargetView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<TargetController>(
      init: TargetController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Target",
              style: AppTheme.lightAppBarTheme.titleTextStyle!.copyWith(
                color: AppColors.black2,
                fontFamily: 'muli',
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.red,
            child: const Center(
              child: Text('Target 1'),
            ),
          ),
        );
      },
    );
  }
}
