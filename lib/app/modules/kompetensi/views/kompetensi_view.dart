import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kompetensi_controller.dart';

class KompetensiView extends GetView<KompetensiController> {
  KompetensiView({Key? key}) : super(key: key);

  final KompetensiController kController = Get.put(KompetensiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return RefreshIndicator(
            onRefresh: controller.loadDataKompetensi,
            child: ListView.builder(
              itemCount: kController.mainContent.length,
              itemBuilder: (context, index) {
                var kompetensi = kController.mainContent[index];

                return Column(
                  children: kompetensi.content
                      .map(
                        (kompetensiSnapshot) => Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Color(0XFF088395),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                ),
                                child: Text(
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    kompetensiSnapshot.title),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0XFF05BFDB),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: Column(
                                  children: kompetensiSnapshot.mainContent.map(
                                    (kontenUtama) {
                                      return Wrap(
                                        children: [
                                          Container(
                                            child: (kontenUtama.name != null &&
                                                    kontenUtama.text != null)
                                                ? Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          style: GoogleFonts
                                                              .poppins(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                          '${kontenUtama.name}',
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                          '${kontenUtama.text}',
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                : (kontenUtama.text != null)
                                                    ? Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        margin: const EdgeInsets
                                                            .symmetric(
                                                          horizontal: 10,
                                                          vertical: 10,
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 6,
                                                              height: 6,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .justify,
                                                                  style: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                  '${kontenUtama.text}',
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    : (kontenUtama.imageUrl !=
                                                            null)
                                                        ? InkWell(
                                                            onTap: () {
                                                              Get.dialog(
                                                                GestureDetector(
                                                                  onTap: () =>
                                                                      Get.back(),
                                                                  child:
                                                                      Container(
                                                                    color: Colors
                                                                        .black,
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Hero(
                                                                        tag: kontenUtama
                                                                            .imageUrl!,
                                                                        child: Image
                                                                            .network(
                                                                          kontenUtama
                                                                              .imageUrl!,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Container(
                                                              margin: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 10),
                                                              child:
                                                                  Image.network(
                                                                height: 200,
                                                                width: double
                                                                    .infinity,
                                                                kontenUtama
                                                                    .imageUrl!,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          )
                                                        : const Text(''),
                                          ),
                                        ],
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          );
        }
      }),
    );
  }
}
