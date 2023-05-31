import 'package:e_modul/app/modules/petunjuk/controllers/petunjuk_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PetunjukView extends GetView<PetunjukController> {
  PetunjukView({Key? key}) : super(key: key);

  final PetunjukController pController = Get.put(PetunjukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      body: Obx(() {
        if (pController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return RefreshIndicator(
            onRefresh: pController.fetchPetunjukData,
            child: ListView.builder(
              itemCount: pController.mainContent.length,
              itemBuilder: (context, index) {
                var petunjuk = pController.mainContent[index];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0XFF05BFDB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF0A4D68),
                          ),
                          petunjuk.main,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: petunjuk.content.length,
                      itemBuilder: (context, idx) {
                        var content = petunjuk.content[idx];
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 20,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF088395),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 20,
                                            right: 10,
                                          ),
                                          child: const Icon(
                                            Icons.check_circle_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        Text(
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                            content.title),
                                      ],
                                    ),
                                  ),
                                  Wrap(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color(0XFF05BFDB),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12),
                                          ),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Text(
                                              textAlign: TextAlign.justify,
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0XFF0A4D68),
                                              ),
                                              content.body),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          );
        }
      }),
    );
  }
}
