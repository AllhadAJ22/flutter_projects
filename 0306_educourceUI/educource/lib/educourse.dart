import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class EduCourse extends StatefulWidget {
  const EduCourse({super.key});

  @override
  State createState() => _EduCourseState();
}

class _EduCourseState extends State<EduCourse> {
  List Imageaddress = ["card1.png", "card2.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 47, left: 20, right: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Welcome to New",
                  style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 27),
                  ),
                ),
                Text(
                  "Educourse",
                  style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 37),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: TextField(
              // cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,

                // focusColor: Colors.white,
                suffixIcon: const Icon(Icons.search_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                label: Text(
                  "Enter your Keyword",
                  style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 29),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 33),
                      child: Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15, bottom: 9),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1),
                                  ],
                                ),
                              ),
                              height: 242,
                              width: 190,
                              child: Column(
                                children: [
                                  Text(
                                    "UX Designer from Scratch.",
                                    style: GoogleFonts.jost(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  Image.asset("card1.png")
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15, bottom: 9),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 77, 228, 1),
                                    Color.fromRGBO(1, 47, 135, 1),
                                  ],
                                ),
                              ),
                              height: 242,
                              width: 190,
                              child: Column(
                                children: [
                                  Text(
                                    "Design Thinking The Beginner",
                                    style: GoogleFonts.jost(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  Image.asset("card2.png")
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15, bottom: 9),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1),
                                  ],
                                ),
                              ),
                              height: 242,
                              width: 190,
                              child: Column(
                                children: [
                                  Text(
                                    "UX Designer from Scratch.",
                                    style: GoogleFonts.jost(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                  Image.asset("card1.png")
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    )

                    // ListView.builder(
                    //   scrollDirection: Axis.horixzontal,
                    //   shrinkWrap: true,
                    //   itemCount: Imageaddress.length,
                    //   itemBuilder: (context, index) {
                    //     return Container(
                    //       child: Image.asset(Imageaddress[index]),
                    //     );
                    //   },
                    // )
                    ,
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                  color:const Color.fromRGBO(25, 0, 56, 1),
                                  height: 36,
                                  width: 36,
                                  child: Image.asset("logo1.png")),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                    // color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(

                                color:const Color.fromRGBO(25, 0, 56, 1),
                                height: 36,
                                width: 36,
                                child: Image.asset("logo2.png"),
                              ),
                              Text(
                                "VISUAL",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                    // color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color:const Color.fromRGBO(25, 0, 56, 1),
                                height: 36,
                                width: 36,
                                child: Image.asset("logo2.png"),
                              ),
                              Text(
                                "ILLUSTRATON",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                    // color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                color:const Color.fromRGBO(25, 0, 56, 1),
                                height: 36,
                                width: 36,
                                child: Image.asset("logo4.png"),
                              ),
                              Text(
                                "PHOTO",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                    // color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
