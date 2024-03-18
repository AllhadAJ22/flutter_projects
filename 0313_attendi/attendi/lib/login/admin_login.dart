// ignore_for_file: depend_on_referenced_packages

import 'package:attendi/admin/admin_home.dart';
import 'package:attendi/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  List _adminList = [];
  void _getBatchList() async {
    _adminList = await DatabaseSqflite.getAddminLogin();
    print(_adminList);
    setState(() {});
  }

  @override
  void initState() {
    _getBatchList();
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  void login() {
    bool flag = false;
    bool validate = _formKey.currentState!.validate();
    if (validate) {
      for (int i = 0; i < _adminList.length; i++) {
        if (_email.text == _adminList[i].email &&
            _pass.text == _adminList[i].password) {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AdminHome(obj: _adminList[i]);
              },
            ),
          );
          flag = true;
        }
      }
    }
    if (!flag) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Incorrect Credentials"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // reverse: true,
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
            Container(
              height: 230,
              // color: Colors.amber,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      // height: 50,
                      width: 312,
                      child: TextFormField(
                        controller: _email,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          hintText: "Enter your email",
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter email";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      // height: 50,
                      width: 312,
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.visiblePassword,
                        controller: _pass,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15),
                          hintText: "Enter password",
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter password";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        login();
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
            ),
          ],
        ),
      ),
    );
  }
}
