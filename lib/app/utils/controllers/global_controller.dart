import 'package:get/get.dart';

class GlobalController extends GetxController {
  // value untuk menunjukkan halaman saat ini
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
    // panggil method .update() untuk memberitahu GetX bahwa nilai berubah
    update();
  }
}
