import 'package:e_modul/app/modules/Glosarium/views/glosarium_view.dart';
import 'package:e_modul/app/modules/Materi/views/materi_view.dart';
import 'package:e_modul/app/modules/Referensi/views/referensi_view.dart';
import 'package:e_modul/app/modules/TestFormatif/views/test_formatif_view.dart';
import 'package:e_modul/app/modules/home/views/home_view.dart';
import 'package:e_modul/app/modules/kompetensi/views/kompetensi_view.dart';
import 'package:e_modul/app/modules/petunjuk/views/petunjuk_view.dart';
import 'package:e_modul/app/modules/profil/views/profil_view.dart';
import 'package:e_modul/app/utils/views/SidebarNavigation_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sidebar_controller.dart';

class SidebarView extends GetView<SidebarController> {
  const SidebarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SidebarNavigation(
      pages: [
        const HomeView(),
        PetunjukView(),
        KompetensiView(),
        const MateriView(),
        const TestFormatifView(),
        const GlosariumView(),
        const ReferensiView(),
        const ProfilView(),
      ],
      titles: const [
        'Beranda',
        'Petunjuk',
        'Kompetensi',
        'Daftar Materi',
        'Tes Formatif',
        'Glosarium',
        'Referensi',
        'Profil',
      ],
    );
  }
}
