import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'card.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController date = TextEditingController();

  void displayBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 25, right: 25, bottom: 26),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                        hintText: "Lorem Ipsum typeseting industry.",
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    TextField(
                      controller: description,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        hintMaxLines: 2,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                        hintText:
                            "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    TextField(
                      controller: date,
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025),
                            initialDate: DateTime.now());
                        if (pickDate != null) {
                          date.text = DateFormat.yMMMd().format(pickDate);
                        }
                      },
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_sharp,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        hintText: "Date",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (title.text.isNotEmpty &&
                        description.text.isNotEmpty &&
                        date.text.isNotEmpty) {
                      toDoList.add(ToDoModelClass(
                          title: title.text,
                          description: description.text,
                          date: date.text));

                      title.clear();
                      description.clear();
                      date.clear();
                    }
                    Navigator.pop(context);
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 112,
              width: 330,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                // color: Colors.red,
                color: cardColor[index],
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    spreadRadius: 1,
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.07),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "gallery-icon.png",
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              toDoList[index].title,
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              toDoList[index].description,
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(84, 84, 84, 1)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        toDoList[index].date,
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(132, 132, 132, 1)),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            displayBottomSheet();
                          });
                        },
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            toDoList.removeAt(index);
                          });
                        },
                        child: const Icon(
                          Icons.delete_outline_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayBottomSheet();
        },
        shape: const CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}
