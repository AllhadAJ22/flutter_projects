import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});
  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List workList = [
    {
      "title": "Lorem Ipsum is simply dummy industry. ",
      "description":
          "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
      'date': "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply dummy industry. ",
      "description":
          "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
      'date': "10 July 2023",
    },
    {
      "title": "Lorem Ipsum is simply dummy industry. ",
      "description":
          "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
      'date': "10 July 2023",
    },
  ];
  void showBottomSheet(bool isedit) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create To-Do",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                    TextFormField(
                      readOnly: true,
                      
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                       onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        
                      },
                    ),
                    
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, left: 29, bottom: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morming",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    )),
                Text(
                  "Allhad",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "CREATE TO DO LIST",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: ListView.builder(
                          itemCount: workList.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                                top: 11,
                                bottom: 11,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(10, 10),
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    blurRadius: 10,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // color: Colors.amber,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    height: 52,
                                    width: 52,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Image.asset("gallery-icon.png"),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          workList[index]["title"],
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 11,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          workList[index]["description"],
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 9,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          workList[index]["date"],
                                          style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                              fontSize: 8,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.radio_button_off_sharp),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () {
          showBottomSheet(false);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
