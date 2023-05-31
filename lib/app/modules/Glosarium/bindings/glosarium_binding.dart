import 'package:get/get.dart';

import '../controllers/glosarium_controller.dart';

class GlosariumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlosariumController>(
      () => GlosariumController(),
    );
  }
}
