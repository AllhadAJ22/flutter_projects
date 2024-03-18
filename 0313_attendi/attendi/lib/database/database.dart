import 'package:attendi/model_classes/adminLogin_model.dart';
import 'package:attendi/model_classes/batches_model.dart';
import 'package:attendi/model_classes/mentorLogin_model.dart';
import 'package:attendi/model_classes/studentLogin_model.dart';
import 'package:attendi/model_classes/student_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseSqflite {
  static dynamic database;

  static dynamic openFunction() async {
    database = openDatabase(
      join(await getDatabasesPath(), "DataCenter3.db"),
      version: 1,
      onCreate: (db, version) {
        //create the table using execute() method
        db.execute(
            "create table Students(rollNo INTEGER PRIMARY KEY,batchName TEXT,name TEXT,email TEXT,gender BOOLEAN,phoneNo INTEGER)");

        db.execute(
            "create table Batches(batchNo INTEGER PRIMARY KEY AUTOINCREMENT,batchName TEXT,location TEXT,noOfStud INTEGER,leader TEXT,mobileNo INTEGER)");

        db.execute(
            "create table AdminsLogin(email TEXT PRIMARY KEY,password TEXT)");
        db.execute(
            "create table MentorsLogin(email TEXT PRIMARY KEY,password TEXT)");
        db.execute(
            "create table StudentsLogin(email TEXT PRIMARY KEY,password TEXT)");
      },
    );
    return database;
  }

  static Future<void> insertlogin() async {
    final localdb = await openFunction();
    Map<String, Object?> map1 = {
      'email': 'allhad123@gmail.com',
      'password': "1234"
    };
    Map<String, Object?> map2 = {
      'email': 'aniket123@gmail.com',
      'password': "1234"
    };
    localdb.insert(
      "AdminsLogin",
      map1,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    localdb.insert(
      "AdminsLogin",
      map2,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    // localdb.insert(
    //   "MentorsLogin",
    //   {},
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );
    // localdb.insert(
    //   "StudentsLogin",
    //   {},
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );
  }

  static Future<List<AdminLoginModel>> getAddminLogin() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> adminList = await localdb.query("AdminsLogin");

    return List.generate(adminList.length, (i) {
      return AdminLoginModel(
        email: adminList[i]['email'],
        password: adminList[i]['password'],
      );
    });
  }

  static Future<List<MentorLoginModel>> getMentorLogin() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> mentorList = await localdb.query("MentorsLogin");

    return List.generate(mentorList.length, (i) {
      return MentorLoginModel(
        email: mentorList[i]['email'],
        password: mentorList[i]['password'],
      );
    });
  }

  static Future<List<StudentLoginModel>> getStudentLogin() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> studList = await localdb.query("StudentsLogin");

    return List.generate(studList.length, (i) {
      return StudentLoginModel(
        email: studList[i]['email'],
        password: studList[i]['password'],
      );
    });
  }

  static Future<List<StudentModelClass>> getStudents() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> studList = await localdb.query("Students");

    return List.generate(studList.length, (i) {
      return StudentModelClass(
        rollNo: studList[i]['rollNo'],
        email: studList[i]['email'],
        batchName: studList[i]['batchName'],
        phoneNo: studList[i]['phoneNo'],
        name: studList[i]['name'],
        gender: (studList[i]['gender'] == 1) ? true : false,
      );
    });
  }

  static Future<void> insertStudent(StudentModelClass obj) async {
    final localdb = await openFunction();
    localdb.insert(
      "Students",
      obj.studmap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteStudent(StudentModelClass obj) async {
    final localdb = await openFunction();
    await localdb.delete(
      "Students",
      where: "rollNo = ?",
      whereArgs: [obj.rollNo],
    );
  }

  static Future<void> updateStudent(StudentModelClass obj) async {
    final localdb = await openFunction();
    await localdb.update("Students", obj.updatestudmap(),
        where: "rollNo = ?",
        whereArgs: [obj.rollNo],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Batches>> getBatchList() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> batchList = await localdb.query("Batches");

    return List.generate(batchList.length, (i) {
      return Batches(
        batchNo: batchList[i]['batchNo'],
        batchName: batchList[i]['batchName'],
        location: batchList[i]['location'],
        noOfStud: batchList[i]['noOfStud'],
        leader: batchList[i]['leader'],
        mobileNo: batchList[i]['mobileNo'],
      );
    });
  }

  static Future<void> insertBatch(Batches obj) async {
    final localdb = await openFunction();
    localdb.insert(
      "Batches",
      obj.batchmap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteBatch(Batches obj) async {
    final localdb = await openFunction();
    await localdb.delete(
      "Batches",
      where: "batchNo = ?",
      whereArgs: [obj.batchNo],
    );
  }

  static Future<void> updateBatch(Batches obj) async {
    final localdb = await openFunction();
    await localdb.update("Batches", obj.updatebatchdmap(),
        where: "batchNo = ?",
        whereArgs: [obj.batchNo],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
