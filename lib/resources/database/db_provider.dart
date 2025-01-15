// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static const dbName = "Wordle.db";
  static const dbVersion = 1;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, dbName);
    return await openDatabase(
      path,
      version: dbVersion,
      onOpen: (db) {},
      onCreate: _onCreate,
      onUpgrade: _onUpgade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Wordle_Users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT UNIQUE NOT NULL
      )
    ''');
    await db.execute('''
      CREATE TABLE Wordle_History (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        word_guess TEXT NOT NULL,
        wrong_guess_times INTEGER NOT NULL CHECK (wrong_guess_times BETWEEN 0 AND 6),
        game_date TEXT NOT NULL,
        win INTEGER NOT NULL, -- Store as INTEGER (0 or 1) for boolean
        FOREIGN KEY (user_id) REFERENCES Users(id)
      )
    ''');
  }

  Future _onUpgade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < dbVersion) {
      await db.execute("DROP TABLE Wordle_History");
      await db.execute("DROP TABLE Wordle_Users");
      await _onCreate(db, newVersion);
    }
  }
}
