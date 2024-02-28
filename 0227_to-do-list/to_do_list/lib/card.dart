import 'dart:ui';

class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass(
      {required this.title, required this.description, required this.date});
}

List<ToDoModelClass> toDoList = [
  ToDoModelClass(
      title: "Lorem Ipsum typeseting industry. ",
      description:
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      date: "10 July 2023"),
];

List cardColor = const [
  Color.fromRGBO(250, 232, 232, 1),
  Color.fromRGBO(232, 237, 250, 1),
  Color.fromRGBO(250, 249, 232, 1),
  Color.fromRGBO(250, 232, 250, 1),
  Color.fromRGBO(250, 232, 232, 1),
];
