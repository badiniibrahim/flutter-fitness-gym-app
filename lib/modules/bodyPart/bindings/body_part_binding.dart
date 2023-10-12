import 'package:fitness_app/modules/bodyPart/controllers/body_part_controller.dart';
import 'package:get/get.dart';

class BodyPartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BodyPartController>(
      () => BodyPartController(),
    );
  }
}
