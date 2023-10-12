import 'package:fitness_app/modules/target/controllers/target_controller.dart';
import 'package:get/get.dart';

class TargetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TargetController>(
      () => TargetController(),
    );
  }
}
