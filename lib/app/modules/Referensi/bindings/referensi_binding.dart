import 'package:get/get.dart';

import '../controllers/referensi_controller.dart';

class ReferensiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferensiController>(
      () => ReferensiController(),
    );
  }
}
