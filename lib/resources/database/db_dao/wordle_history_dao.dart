import 'package:sqflite/sqflite.dart';
import 'package:votee_mobile_coding_interview_project/resources/database/db_provider.dart';
import 'package:votee_mobile_coding_interview_project/utils/app_constant.dart';

class WordleHistoryDAO {
  final DBProvider dbProvider;
  final dbTableName = AppConstant.dbTableWordleHistory;

  WordleHistoryDAO({required this.dbProvider});

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await dbProvider.database;
    return await db.insert(dbTableName, row);
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    Database db = await dbProvider.database;
    return await db.query(dbTableName);
  }

  Future<int> update(Map<String, dynamic> row, int idRow) async {
    Database db = await dbProvider.database;
    return await db.update(dbTableName, row, where: 'id = ?', whereArgs: [idRow]);
  }

  Future<int> delete(int idRow) async {
    Database db = await dbProvider.database;
    return await db.delete(dbTableName, where: 'id = ?', whereArgs: [idRow]);
  }

  Future<Map<String, dynamic>?> getHistoryById(int idRow) async {
    Database db = await dbProvider.database;
    List<Map<String, dynamic>> result =
        await db.query(dbTableName, where: 'id = ?', whereArgs: [idRow]);
    if (result.isNotEmpty) {
      return result.first;
    }
    return null;
  }

  Future<List<Map<String, dynamic>>> getAllHistoryByUser(int userId) async {
    Database db = await dbProvider.database;
    return await db.query(dbTableName, where: 'user_id = ?', whereArgs: [userId]);
  }
}
