import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//class to perform sqflite operations curd oprations
class DatabaseSqflite {
  static dynamic database;

  //create the database after getting the path and then opening the database
  static dynamic openFunction() async {
    database = openDatabase(
      join(await getDatabasesPath(), "To-Do6.db"),
      version: 1,
      onCreate: (db, version) {
        //create the table using execute() method
        db.execute(
            "create table cards(card_no INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,description TEXT,date TEXT,cardstatus BOOLEAN)");
      },
    );
    return database;
  }

  //to retrive the the list of map from sqflite dataabse using query() method
  static Future<List<ToDoModelClass>> getCardList() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> cardList = await localdb.query("cards");

    //converting the list of map to list of objects and return the list of objects
    return List.generate(cardList.length, (i) {
      return ToDoModelClass(
        cardNo: cardList[i]['card_no'],
        title: cardList[i]['title'],
        description: cardList[i]['description'],
        date: cardList[i]['date'],
        cardstatus: (cardList[i]['cardstatus'] == 1) ? true : false,
      );
    });
  }

  //inserting the task in sqflite database using indert() method
  static Future<void> insertCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    localdb.insert(
      "cards",
      obj.workmap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //deleting the task from the sqflite database
  static Future<void> deleteCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    // print(obj.card_no);
    await localdb.delete(
      "cards",
      where: "card_no = ?",
      whereArgs: [obj.cardNo],
    );
  }

  //updating the task in the sqflite database
  static Future<void> updateCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    await localdb.update("cards", obj.updatemap(),
        where: "card_no = ?",
        whereArgs: [obj.cardNo],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}

// model class for the tasks
class ToDoModelClass {
  int? cardNo;
  String title;
  String description;
  String date;
  bool cardstatus;

  ToDoModelClass({
    this.cardNo,
    required this.title,
    required this.description,
    required this.date,
    required this.cardstatus,
  });

  //map used to update the task
  Map<String, dynamic> updatemap() {
    return {
      "card_no": cardNo,
      "title": title,
      "description": description,
      "date": date,
      "cardstatus": (cardstatus == true) ? 1 : 0,
    };
  }

  //map used to add the tasks
  Map<String, dynamic> workmap() {
    return {
      // "card_no": card_no,
      "title": title,
      "description": description,
      "date": date,
      "cardstatus": 0,
    };
  }
}
