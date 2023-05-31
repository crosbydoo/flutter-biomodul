import 'dart:convert';

import 'package:e_modul/app/utils/models/MateriModel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MateriController extends GetxController {
  var mainContent = <MateriModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadMateriData();
  }

  Future<void> loadMateriData() async {
    try {
      final jsonString = await rootBundle.loadString('assets/json/materi.json');
      final jsonData = jsonDecode(jsonString);
      final List<MateriModel> materiList = List<MateriModel>.from(
        jsonData.map(
          (json) => MateriModel.fromJson(json),
        ),
      );

      mainContent.value = materiList;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}
