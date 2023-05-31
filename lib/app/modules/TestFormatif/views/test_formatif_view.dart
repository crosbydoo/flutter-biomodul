import 'package:e_modul/app/modules/TestFormatif/controllers/test_formatif_controller.dart';
import 'package:e_modul/app/modules/TestFormatif/views/aturan_view.dart';
import 'package:e_modul/app/modules/TestFormatif/views/posttest.dart';
import 'package:e_modul/app/modules/TestFormatif/views/pretest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TestFormatifView extends GetView<TestFormatifController> {
  const TestFormatifView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Column(
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        'Petunjuk'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color(0XFF05BFDB),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        'Pilihlah salah satu jawaban yang paling tepat pada setiap soal berikut, dan lihatlah hasil skor Anda.',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          'Aturan Penilaian'),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Color(0XFF05BFDB),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AturanView(),
                                ),
                              );
                            },
                            child: Container(
                              width: 120,
                              height: 50,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0XFF088395),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'Detail',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: Get.width * 0.4,
                            alignment: Alignment.centerRight,
                            // color: Colors.amber,
                            child: Lottie.asset('assets/lotties/notebook.json'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        'Tes Formatif'),
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
                    child: Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Google Form',
                            style: GoogleFonts.poppins(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GoogleFormView(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 140,
                                  height: 50,
                                  margin: const EdgeInsets.only(top: 25),
                                  decoration: BoxDecoration(
                                    color: const Color(0XFF088395),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'Pretest',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PostTestView(),
                                    ),
                                  );
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 140,
                                  height: 50,
                                  margin: const EdgeInsets.only(top: 25),
                                  decoration: BoxDecoration(
                                    color: const Color(0XFF088395),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'Posttest',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
