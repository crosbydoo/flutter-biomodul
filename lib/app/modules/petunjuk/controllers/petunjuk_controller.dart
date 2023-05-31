import 'dart:convert';
import 'package:e_modul/app/utils/models/petunjukModel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PetunjukController extends GetxController {
  //mengambil data dari json

  var mainContent = <PetunjukModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPetunjukData();
  }

  Future<void> fetchPetunjukData() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/json/petunjuk.json');
      final jsonData = jsonDecode(jsonString);
      final List<PetunjukModel> petunjukList = List<PetunjukModel>.from(
        jsonData.map(
          (data) => PetunjukModel.fromJson(data),
        ),
      );
      mainContent.value = petunjukList;
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    }
  }
}
