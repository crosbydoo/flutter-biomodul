// ignore_for_file: library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:e_modul/app/modules/Sidebar/views/sidebar_view.dart';
import 'package:e_modul/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final HomeController gController = Get.put(HomeController());
  final _formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: Text(
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                'SISTEM EKSKRESI'),
          ),
          Text(
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              'Urinaria'),
          Text(
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            'dengan Etika Penanganan Hewan',
          ),
        ],
      );
    }

    Widget logo() {
      return Container(
        width: 200,
        height: 200,
        color: Colors.transparent,
        margin: const EdgeInsets.only(top: 50),
        child: ClipRRect(
          child: Image.asset('assets/images/kidney.png'),
        ),
      );
    }

    Widget deskripsi() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                'Prodi Pendidikan Biologi \n Univeritas Negeri Yogyakarta \n 2023'),
          ),
        ],
      );
    }

    Widget popButton() {
      return InkWell(
        onTap: () async {
          await showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0XFF05BFDB),
                content: Wrap(
                  children: [
                    Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          'E-Modul',
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF0A4D68),
                            ),
                            'Siapa namamu?',
                          ),
                        ),
                        Form(
                          key: _formState,
                          child: TextFormField(
                            maxLength: 10,
                            controller: gController.textController,
                            validator: (value) {
                              if (value == '') {
                                return 'Nama harus diisi';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'Nama',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                actions: [
                  Center(
                    child: Wrap(
                      children: [
                        InkWell(
                          onTap: () async {
                            if (_formState.currentState!.validate()) {
                              await Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SidebarView(),
                                ),
                              );
                              Fluttertoast.showToast(
                                msg: "Berhasil Masuk",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            } else {
                              Fluttertoast.showToast(
                                msg: "nama harus diisi",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0XFF0A4D68),
                            ),
                            child: Text(
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                                'Masuk'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Container(
          height: 50,
          width: 150,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100),
          decoration: BoxDecoration(
            color: const Color(0XFF0A4D68),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'MULAI',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                header(),
                logo(),
                popButton(),
                deskripsi(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
