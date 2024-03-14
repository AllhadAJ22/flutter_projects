// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/login/admin_login.dart';
import 'package:attendi/login/mentor_login.dart';
import 'package:attendi/login/student_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 170,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                alignment: Alignment.topLeft,
                image: AssetImage("assets/Component 2.png"),
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/login.svg",
            height: 340,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const AdminPage();
                }),
              );
            },
            child: Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(27, 182, 182, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.admin_panel_settings_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Login As Admin",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const MentorPage();
                }),
              );
            },
            child: Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(27, 182, 182, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Login As Mentor",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const StudentPage();
                }),
              );
            },
            child: Container(
              height: 60,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 20,
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(27, 182, 182, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.boy_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Login As Student",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
