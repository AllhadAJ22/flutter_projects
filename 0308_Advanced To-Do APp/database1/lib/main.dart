import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class Employee {
  final int empId;
  final String name;
  final double sal;

  Employee({required this.empId, required this.name, required this.sal});

  Map<String, dynamic> dataMap() {
    return {
      "empId": empId,
      "name": name,
      "sal": sal,
    };
  }
}

Future<void> insertEmp(Employee obj) async {
  final localdb = await database;
  localdb.insert(
    "Employee",
    obj.dataMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Map<String, dynamic>>> getData() async {
  final localdb = await database;

  List<Map<String, dynamic>> listdata = await localdb.query("Employee");
  return listdata;
}

Future<void> deleteEmp(Employee emp) async {
  final localdb = await database;
  await localdb.delete(
    "Employee",
    where: "empId = ?",
    whereArgs: [emp.empId],
  );
}

void main() async {
  runApp(const MyApp());

  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
          "create table Employee(empId INT primary key,name TEXT,sal REAL)");
    },
  );

  Employee emp1 = Employee(
    empId: 001,
    name: "Allhad",
    sal: 2.0,
  );
  await insertEmp(emp1);

  Employee emp2 = Employee(
    empId: 002,
    name: "Hemant",
    sal: 3.0,
  );
  await insertEmp(emp2);

  List<Map<String, dynamic>> retVal = await getData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }

  await deleteEmp(emp1);
  print("after delete");

  retVal = await getData();
  for (int i = 0; i < retVal.length; i++) {
    print(retVal[i]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
