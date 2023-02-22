import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/core/resources/colors.dart';
import 'package:motionhack/core/resources/gradient.dart';
import 'package:motionhack/core/widgets/custom_button.dart';
import 'package:motionhack/core/widgets/custom_text_input.dart';
import 'package:unicons/unicons.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Ubah Profil",
          style: GoogleFonts.inter().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            UniconsLine.comment,
            color: BaseColors.primaryColor,
            size: 36,
          ),
          SizedBox(width: 15),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 90,
                              height: 85,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFFDDDDDD),
                              ),
                              width: 82,
                              height: 82,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: BaseGradient.primaryGradient,
                                ),
                                width: 29,
                                height: 29,
                                child: Icon(
                                  UniconsLine.pen,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextInput(
                            hintText: "Indra Mahesa",
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Nomor Handphone",
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextInput(
                            hintText: "+62813937432",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: CustomButton(
                  child: Center(
                    child: Text(
                      "Ubah Sekarang",
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
