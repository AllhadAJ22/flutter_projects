import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 1), () {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
  //       return const LoginPage();
  //     }));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 100,
        ),
        Text(
          "Have a nice day",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/attendi.svg",
              height: 400,
            ),
            // Image.asset("assets/attendance1.png")
          ],
        ),
      ],
    ));
  }
}
