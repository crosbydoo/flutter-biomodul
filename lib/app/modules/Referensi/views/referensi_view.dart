import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/referensi_controller.dart';

class ReferensiView extends GetView<ReferensiController> {
  const ReferensiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0XFF05BFDB),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Akmal, Y. (2019). ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Anatomi Fisiologi Manusia. ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(
                          text: 'https://doi.org/10.31219/osf.io/k8c46'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text:
                        'ARRP. (2003). Guidelines for the Housing of Rabbits in Scientific Institutions. ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Animal Research Review Panel, August, ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: '1-35'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Chalik, R. (2016). ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Anatomi Fisiologi Manusia. ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(
                          text:
                              'Jakarta: Kementrian Kesehatan Republik Indonesia.'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Dafriani, Putri. (2019). ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Buku Ajar Anatomi dan Fisiologi untuk Mahasiswa Kesehatan.',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: 'Jakarta: CV Berkah Prima. '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Ginting, Daniel Suranta, dkk. (2022).  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Anatomi Fisiologi Tubuh Manusia.',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(
                          text: 'Padang: PT Global Eksekutif Teknologi. '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Home Office. (2014).   ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Mice, rats, gerbils, hamsters and guinea pigs. In: Code of Practice for the Housing and Care of Animals Bred, Supplied or Used for Scientific Purposes. ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: '(Vol. 21, Issue December). '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text:
                        'Lidfors, L., Edström, T., & Lindberg, L. (2006). The Welfare of Laboratory Rabbits. ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'The Welfare of Laboratory Animals, ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(
                          text:
                              '211–243. https://doi.org/10.1007/1-4020-2271-9_10 '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text:
                        'Sherwood, L. (2018). Fisiologi Manusia dari Sistem ke Sel.  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Human Physiology: From Cells to System, ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: '1–999. '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text:
                        'Stauffacher, M., & Baumans, V. (2003). Assessment of Animal Housing Standards for Rabbits in a Research Setting. In  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'The Development of Science-based Guidelines for Laboratory Animal Care ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: '(Issue January 2004). '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Waldi, L. (2018). Panduan Praktikum Biologi.  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Panduan Praktikum, ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(
                          text:
                              '33–42. https://faperta.untidar.ac.id/wp-content/uploads/2017/09/DIKTAT-BIOLOGI-Dasar-2018-.pdf '),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'Whitehouse, RH; Grove, A. (1967).  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Dissection of the Rabbit. ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: ''),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text:
                        'Yusuf, M., Al-Gizar, R. M., Rorrong, A. Y. Y., Badaring, R. D., Aswanti, H., Ayu, M. S., Nurazizah, Dzalsabila, A., Ahyar, M., Wulan, W., Putri, jelita M., & Arisma, F. W. (2022).  ',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Percobaan Memahami Perawatan Dan Kesejahteraan Hewan Percobaan. ',
                        style: GoogleFonts.poppins(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: '1-109'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
