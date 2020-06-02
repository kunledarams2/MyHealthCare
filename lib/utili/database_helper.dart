import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  
  final String userTable = "userTable";
  final String userNameColumn = "userName";
  final String userPasswordColumn = "userPasswor";
  final String columnId = "id";

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await intiDb();
    return _db;
  }

  DatabaseHelper.internal();

  intiDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    var path = join(documentDirectory.path, "mainDb.db");

    var ourDb = openDatabase(path, version: 1, onCreate: _onCreate );
    return ourDb;
  }

  void _onCreate (Database db, int version) async {
     await db.execute("CREATE TABLE $userTable($columnId INTEGER PRIMARY KEY, $userNameColumn TEXT, $userPasswordColumn TEXT)");
    
  }
}
