import 'package:advance_to_do/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TODOAppUI extends StatefulWidget {
  const TODOAppUI(this.name, {super.key});
  final String name;

  @override
  State<TODOAppUI> createState() => _TODOAppUIState();
}

class _TODOAppUIState extends State<TODOAppUI> {
  dynamic database;
  List cardList = [];

  //call to get the the data in local list named cardList
  void _getCards() async {
    cardList = await DatabaseSqflite.getCardList();
    setState(() {});
  }

  @override
  void initState() {
    _getCards();
    super.initState();
  }

  //GlobalKey for TextFields in the BottomSheet
  final GlobalKey _formKey = GlobalKey<FormState>();

  //controllers for TextFields in the BottomSheet
  final TextEditingController dateController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  //showBottomSheet will appear when anyone click on FloatingActionButton
  Future<void> showBottomSheet(bool doEdit,
      [ToDoModelClass? todoModelObj]) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Create Tasks",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TextFormField for Title
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        label: const Text("Enter Title"),
                        hintText: "Enter Title",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(107, 112, 92, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    //TextFormField for Description
                    TextFormField(
                      controller: descriptionController,
                      maxLines: 2,
                      decoration: InputDecoration(
                        label: const Text("Enter Description"),
                        hintText: "Enter Description",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(107, 112, 92, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    //TextFormField for Datepicker
                    TextFormField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        label: const Text("Enter Date"),
                        hintText: "Enter Date",
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(107, 112, 92, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        //this will show the calendar
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        dateController.text = formatedDate;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),

                //submit button to add the tasks
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(107, 112, 92, 1),
                  ),
                  onPressed: () {
                    //it will show the AlertDialog/AlartBox if any field is empty
                    if (titleController.text.trim().isEmpty ||
                        descriptionController.text.trim().isEmpty ||
                        dateController.text.trim().isEmpty) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Alert'),
                          content: const Text('Add all the details'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      doEdit ? submit(doEdit, todoModelObj) : submit(doEdit);
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  //this method will called after clicking submit button on buttomsheet
  void submit(bool doedit, [ToDoModelClass? toDoModelObj]) {
    if (!doedit) {
      //This will add the task in the sqflite database
      DatabaseSqflite.insertCard(
        ToDoModelClass(
          title: titleController.text.trim(),
          description: descriptionController.text.trim(),
          date: dateController.text.trim(),
          cardstatus: false,
        ),
      );
      _getCards();
    } else {
      int? no = toDoModelObj?.cardNo;
      toDoModelObj!.date = dateController.text.trim();
      toDoModelObj.title = titleController.text.trim();
      toDoModelObj.description = descriptionController.text.trim();

      //This will update the task in the sqflite database
      DatabaseSqflite.updateCard(
        ToDoModelClass(
          cardNo: no,
          title: titleController.text.trim(),
          description: descriptionController.text.trim(),
          date: dateController.text.trim(),
          cardstatus: toDoModelObj.cardstatus,
        ),
      );
      _getCards();
    }

    //to clear the controllers
    clearController();
  }

  //this method well bw called when anyone want to mark the task as done using checkbox
  void updateStatus(ToDoModelClass obj) {
    DatabaseSqflite.updateCard(
      ToDoModelClass(
        cardNo: obj.cardNo,
        title: obj.title,
        description: obj.description,
        date: obj.date,
        cardstatus: obj.cardstatus,
      ),
    );
    _getCards();
  }

  //this method is to clear the controllers
  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  //this method will be called when cliced on delete button of any task
  void removeTasks(ToDoModelClass toDoModelObj) async {
    await DatabaseSqflite.deleteCard(toDoModelObj);
    _getCards();
  }

  //this method will be called when cliced on update button of any task
  void editTask(ToDoModelClass toDoModelObj) {
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;
    showBottomSheet(true, toDoModelObj);
  }

  //flag for edit task /add new task
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(107, 112, 92, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Good Morning",
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                widget.name,
                style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(
                      40,
                    ),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "CREATE TASKS",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(
                              40,
                            ),
                          ),
                        ),
                        child: (cardList.isEmpty)
                            ? //if there is no task added
                            SizedBox(
                                width: double.maxFinite,
                                child: Center(
                                    child: Text(
                                  "Add Your Tasks",
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                              )
                            :
                            //It will show all the added tasks
                            SlidableAutoCloseBehavior(
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: cardList.length,
                                  itemBuilder: (context, index) {
                                    //slidable cards/tasks
                                    return Slidable(
                                      groupTag: '0',
                                      key: ValueKey(index),
                                      endActionPane: ActionPane(
                                        extentRatio: 0.2,
                                        motion: const DrawerMotion(),
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                const SizedBox(
                                                  height: 5,
                                                ),

                                                //EditButton / Icon
                                                GestureDetector(
                                                  onTap: () {
                                                    editTask(cardList[index]);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              107, 112, 92, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: const Icon(
                                                      Icons.edit,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),

                                                //DeleteButton/Iocn
                                                GestureDetector(
                                                  onTap: () {
                                                    removeTasks(
                                                        cardList[index]);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              107, 112, 92, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: const Icon(
                                                      Icons.delete,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          bottom: 20,
                                          top: 20,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          border: Border.all(
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 0.05),
                                              width: 0.5),
                                          boxShadow: const [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 20,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.13),
                                            ),
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.zero),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 60,
                                                  width: 60,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color.fromRGBO(
                                                        217, 217, 217, 1),
                                                  ),
                                                  child: Image.asset(
                                                      "assets/icon.png"),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                SizedBox(
                                                  width: 222,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      //Show the Title of the Task
                                                      Text(
                                                        cardList[index].title,
                                                        style:
                                                            GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),

                                                      //Show the Discription of the task
                                                      Text(
                                                        cardList[index]
                                                            .description,
                                                        style: GoogleFonts.inter(
                                                            color: const Color
                                                                .fromRGBO(
                                                                0, 0, 0, 0.7),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),

                                                      //Show the due date of that task
                                                      Text(
                                                        cardList[index].date,
                                                        style: GoogleFonts.inter(
                                                            color: const Color
                                                                .fromRGBO(
                                                                0, 0, 0, 0.7),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                //checkbox to mark the done task
                                                Checkbox(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  activeColor: Colors.green,
                                                  value: cardList[index]
                                                      .cardstatus,
                                                  onChanged: (val) {
                                                    cardList[index].cardstatus =
                                                        !cardList[index]
                                                            .cardstatus;

                                                    updateStatus(
                                                        cardList[index]);
                                                  },
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

      // FloatingActionButton to add the task
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(107, 112, 92, 1),
        onPressed: () async {
          await showBottomSheet(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
