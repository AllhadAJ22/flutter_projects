
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseSqflite {
  static dynamic database;
  static dynamic openFunction() async {
    database = openDatabase(
      join(await getDatabasesPath(), "To-Do6.db"),
      version: 1,
      onCreate: (db, version) {
        db.execute(
            "create table cards(card_no INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,description TEXT,date TEXT,cardstatus BOOLEAN)");
        // "create table cards(title TEXT PRIMARY KEY,description TEXT,date TEXT)");
      },
    );
    return database;
  }

  static Future<List<ToDoModelClass>> getCardList() async {
    final localdb = await openFunction();

    List<Map<String, dynamic>> cardList = await localdb.query("cards");
    return List.generate(cardList.length, (i) {
      return ToDoModelClass(
        cardNo: cardList[i]['card_no'],
        title: cardList[i]['title'],
        description: cardList[i]['description'],
        date: cardList[i]['date'],
        cardstatus: (cardList[i]['cardstatus'] == 1)?true:false,
      );
    });
  }

  static Future<void> insertCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    localdb.insert(
      "cards",
      obj.workmap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deleteCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    // print(obj.card_no);
    await localdb.delete(
      "cards",
      where: "card_no = ?",
      whereArgs: [obj.cardNo],
    );
  }

  static Future<void> updateCard(ToDoModelClass obj) async {
    final localdb = await openFunction();
    // print(obj.updatemap());
    await localdb.update("cards", obj.updatemap(),
        where: "card_no = ?",
        whereArgs: [obj.cardNo],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}

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

  Map<String, dynamic> updatemap() {
    return {
      "card_no": cardNo,
      "title": title,
      "description": description,
      "date": date,
      "cardstatus": (cardstatus == true)?1:0,
    };
  }

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

List userList = [
  {"username": "Allhad", "password": "Allhad123"},
  {"username": "Sumant", "password": "Sumant123"},
  {"username": "Ankit", "password": "Ankit123"},
];
