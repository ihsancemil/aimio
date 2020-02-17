import 'package:aimio/repository/base_repository.dart';
import 'package:sqflite/sqflite.dart';

class AimModel extends BaseRepository
{
  final int id;
  final String title;
  final String definition;
  final double start;
  final double end;
  final int iconId;

  AimModel({this.id, this.title, this.definition, this.start, this.end, this.iconId});

  @override
  void createTable(Database db) {
    db.execute(
      "CREATE TABLE" + 
      "aim (id INTEGER PRIMARY KEY, title TEXT, definition TEXT, start REAL, end REAL, iconId INTEGER)"
    );
  } 
}