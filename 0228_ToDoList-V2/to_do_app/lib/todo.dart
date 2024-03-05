import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'todo_data.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoListApp extends StatefulWidget {
  const ToDoListApp({super.key});
  @override
  State createState() => _ToDoListAppState();
}

class _ToDoListAppState extends State<ToDoListApp> {
 
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void showBottomSheet(bool doEdit, [ToDoModelClass? toDoModelobj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
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
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
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
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
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
                        String formatedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      doEdit ? submit(doEdit, toDoModelobj) : submit(doEdit);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }

  List colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<ToDoModelClass> workList = [
    ToDoModelClass(
      title: "take notes",
      description: "take notes of every app you write",
      date: "10 July 2023",
    )
  ];

  void submit(bool doedit, [ToDoModelClass? toDoModelObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          workList.add(
            ToDoModelClass(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              date: dateController.text.trim(),
            ),
          );
        });
      } else {
        setState(() {
          toDoModelObj!.date = dateController.text.trim();
          toDoModelObj.title = titleController.text.trim();
          toDoModelObj.description = descriptionController.text.trim();
        });
      }
    }
    clearController();
  }

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void removeTasks(ToDoModelClass toDoModelObj) {
    setState(() {
      workList.remove(toDoModelObj);
    });
  }

  void editTask(ToDoModelClass toDoModelObj) {
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;
    showBottomSheet(true, toDoModelObj);
  }

  bool screenflag = true;
  Scaffold screen() {
    if (screenflag == true) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          title: const Text("To-Do App Login"),
        ),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Enter your UserName ?",
                  label: const Text("UserName"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  // print("username");
                  if (value == null || value.isEmpty) {
                    return "please enter username";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: passWord,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  hintText: "Enter your PassWord ?",
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  // print("password");
                  if (value == null || value.isEmpty) {
                    return "please enter password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  bool validate = _formkey.currentState!.validate();
                  // print(userName.text);
                  // print(passWord.text);
                  bool flag = true;

                  if (validate) {
                    // print("object");
                    for (int i = 0; i < userList.length; i++) {
                      if (userList[i]["username"] == userName.text &&
                          userList[i]["password"] == passWord.text) {
                        flag = false;

                        screenflag = false;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("LOGIN SUCCESSFUL"),
                          ),
                        );
                        setState(() {});
                        break;
                      }
                    }
                  }
                  if (validate == true && flag == true) {
                    // print("true");
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid username and password"),
                      ),
                    );
                  }
                },
                style: const ButtonStyle(

                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            "TO-DO APP",
            style: GoogleFonts.quicksand(
                fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
            itemCount: workList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: colorList[index % colorList.length],
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  // borderRadius: BorderRadius.all(Radius.circular(50))
                                  shape: BoxShape.circle),
                              child: Image.asset("assets/gallery-icon.png"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    workList[index].title,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    workList[index].description,
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color:
                                          const Color.fromRGBO(84, 84, 84, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                workList[index].date,
                                style: GoogleFonts.quicksand(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(132, 132, 132, 1)),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      editTask(workList[index]);
                                    },
                                    child: const Icon(
                                      Icons.edit_outlined,
                                      color: Color.fromRGBO(0, 139, 148, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      removeTasks(workList[index]);
                                    },
                                    child: const Icon(
                                      Icons.delete_outline,
                                      color: Color.fromRGBO(0, 139, 148, 1),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          onPressed: () {
            clearController();
            showBottomSheet(false);
          },
          child: const Icon(
            Icons.add,
            size: 50,
            color: Colors.white,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return screen();
  }
}
