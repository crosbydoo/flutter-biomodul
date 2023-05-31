import 'package:get/get.dart';

import '../modules/Glosarium/bindings/glosarium_binding.dart';
import '../modules/Glosarium/views/glosarium_view.dart';
import '../modules/Materi/bindings/materi_binding.dart';
import '../modules/Materi/views/materi_view.dart';
import '../modules/Referensi/bindings/referensi_binding.dart';
import '../modules/Referensi/views/referensi_view.dart';
import '../modules/Sidebar/bindings/sidebar_binding.dart';
import '../modules/Sidebar/views/sidebar_view.dart';
import '../modules/TestFormatif/bindings/test_formatif_binding.dart';
import '../modules/TestFormatif/views/test_formatif_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kompetensi/bindings/kompetensi_binding.dart';
import '../modules/kompetensi/views/kompetensi_view.dart';
import '../modules/petunjuk/bindings/petunjuk_binding.dart';
import '../modules/petunjuk/views/petunjuk_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../utils/views/login_view.dart';
import '../utils/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
    ),
    GetPage(
      name: _Paths.PETUNJUK,
      page: () => PetunjukView(),
      binding: PetunjukBinding(),
    ),
    GetPage(
      name: _Paths.SIDEBAR,
      page: () => const SidebarView(),
      binding: SidebarBinding(),
    ),
    GetPage(
      name: _Paths.KOMPETENSI,
      page: () => KompetensiView(),
      binding: KompetensiBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => const MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.TEST_FORMATIF,
      page: () => const TestFormatifView(),
      binding: TestFormatifBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => const ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.GLOSARIUM,
      page: () => const GlosariumView(),
      binding: GlosariumBinding(),
    ),
    GetPage(
      name: _Paths.REFERENSI,
      page: () => const ReferensiView(),
      binding: ReferensiBinding(),
    ),
  ];
}
