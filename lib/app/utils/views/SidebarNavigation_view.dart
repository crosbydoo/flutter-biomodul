// ignore_for_file: file_names
import 'package:e_modul/app/utils/greeting.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:e_modul/app/modules/home/controllers/home_controller.dart';
import 'package:e_modul/app/utils/controllers/global_controller.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';

class SidebarNavigation extends StatelessWidget {
  final List<Widget> pages;
  final List<String> titles;

  SidebarNavigation({
    super.key,
    required this.pages,
    required this.titles,
  });

  final controller = Get.put(GlobalController());
  final hc = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF088395),
          title: Obx(
            () => Text(
              titles[controller.selectedIndex.value],
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: Color(0XFF05BFDB),
                    ),
                    onPressed: () async {
                      // aksi ketika notifikasi di-klik
                      ElegantNotification.info(
                        width: 360,
                        notificationPosition: NotificationPosition.topLeft,
                        animation: AnimationType.fromTop,
                        title: Text(
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            'PERHATIAN !'),
                        description: const Text(
                            'Aplikasi sedang dalam tahap pengembangan'),
                        onDismiss: () {},
                      ).show(context);
                    },
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 14,
                        minHeight: 14,
                      ),
                      child: const Text(
                        '!',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Obx(() => pages[controller.selectedIndex.value]),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0XFF05BFDB),
                ),
                accountName: Text(
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 16),
                    '${greeting()}'
                    ', '
                    '${hc.myText.value.toLowerCase().titleCase}'
                    '👋'),
                accountEmail: Text(
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    "Universitas Negeri Yogyakarta"),
                currentAccountPicture: const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    IconData icon;
                    switch (index) {
                      case 0:
                        icon = Icons.home;
                        break;
                      case 1:
                        icon = Icons.lightbulb;
                        break;
                      case 2:
                        icon = Icons.check_circle;
                        break;
                      case 3:
                        icon = Icons.folder_copy_rounded;
                        break;
                      case 4:
                        icon = Icons.question_mark_rounded;
                        break;
                      case 5:
                        icon = Icons.menu_book_rounded;
                        break;
                      case 6:
                        icon = Icons.library_books_rounded;
                        break;
                      case 7:
                        icon = Icons.person;
                        break;
                      // tambahkan case untuk item lainnya
                      default:
                        icon = Icons.help;
                    }
                    return ListTile(
                      leading: Icon(icon),
                      selected: controller.selectedIndex.value == index,
                      selectedColor: const Color(0XFF05BFDB),
                      iconColor: const Color(0XFF088395),
                      textColor: const Color(0XFF088395),
                      title: Text(titles[index]),
                      onTap: () async {
                        controller.onItemTapped(index);
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0XFF088395)),
                child: Wrap(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.logout_rounded,
                      ),
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      title: const Text('Keluar'),
                      onTap: () async {
                        await Get.offAllNamed('/login');
                        Fluttertoast.showToast(
                          msg: "Berhasil Masuk",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
