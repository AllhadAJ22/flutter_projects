// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/admin/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                // color: Colors.amber
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  image: AssetImage("assets/Component 2.png"),
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/login-1.svg",
              height: 350,
            ),
            Text(
              "Admin Login",
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 312,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
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
                        MaterialPageRoute(
                          builder: (context) => const AdminHome(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 312,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.09),
                          )
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromRGBO(27, 182, 182, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
