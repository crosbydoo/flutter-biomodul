import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 290,
                margin: const EdgeInsets.symmetric(
                  vertical: 40,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    AvatarGlow(
                      endRadius: 50,
                      repeat: true,
                      glowColor: const Color(0XFF00FFCA),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            'assets/images/mhs.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                          'Rahma Fanidia Rahayu',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'rahmafanidia.2019@student.uny.ac.id',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'NIM. 19304241046',
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                            'Mahasiswa',
                          ),
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Prodi Pendidikan Biologi',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Fakultas Matematika dan Ilmu Pengetahuan Alam',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Universitas Negeri Yogyakarta',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          '2023',
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // DOSEN PEMBIMBING SECTION
              Container(
                width: double.infinity,
                height: 280,
                margin: const EdgeInsets.symmetric(
                  vertical: 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    AvatarGlow(
                      endRadius: 50,
                      repeat: true,
                      glowColor: const Color(0XFF00FFCA),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(
                            'assets/images/dospem.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                          'Ir. Ciptono, M.Si',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'ciptono@uny.ac.id',
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600],
                            ),
                            'Dosen Pembimbing',
                          ),
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Dosen Departemen Pendidikan Biologi',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Fakultas Matematika dan Ilmu Pengetahuan Alam',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          'Universitas Negeri Yogyakarta',
                        ),
                        Text(
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                          '2023',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
