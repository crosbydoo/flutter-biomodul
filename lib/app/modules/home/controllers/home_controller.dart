import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var myText = ''.obs;

  TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // Tambahkan listener pada textController
    textController.addListener(() {
      myText.value = textController.text.toLowerCase();
    });
  }

  // @override
  // void onClose() {
  //   // jangan lupa dispose controller ketika controller dihapus dari memory
  //   textController.dispose();
  //   super.onClose();
  // }
}
