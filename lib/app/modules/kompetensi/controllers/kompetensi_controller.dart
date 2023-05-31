import 'dart:convert';

import 'package:e_modul/app/utils/models/kompetensiModel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class KompetensiController extends GetxController {
  var mainContent = <KompetensiModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadDataKompetensi();
  }

  Future<void> loadDataKompetensi() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/json/kompetensi.json');
      final jsonData = jsonDecode(jsonString);
      final List<KompetensiModel> dataList = List<KompetensiModel>.from(
        jsonData.map(
          (data) => KompetensiModel.fromJson(data),
        ),
      );

      mainContent.value = dataList;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}
