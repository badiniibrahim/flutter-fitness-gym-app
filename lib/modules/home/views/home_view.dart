import 'package:fitness_app/core/utilies/size_config.dart';
import 'package:fitness_app/modules/home/widgets/body_part_view.dart';
import 'package:fitness_app/modules/home/controllers/home_controller.dart';
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
        return const Scaffold(body: BodyPartView());
      },
    );
  }
}
