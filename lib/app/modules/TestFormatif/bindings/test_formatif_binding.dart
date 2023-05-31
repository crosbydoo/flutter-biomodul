import 'package:get/get.dart';

import '../controllers/test_formatif_controller.dart';

class TestFormatifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestFormatifController>(
      () => TestFormatifController(),
    );
  }
}
