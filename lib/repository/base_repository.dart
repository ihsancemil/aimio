import 'package:sqflite/sqflite.dart';

abstract class BaseRepository {
  void createTable(Database db);
} 