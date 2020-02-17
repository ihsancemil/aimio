import 'package:aimio/repository/base_repository.dart';
import 'package:sqflite/sqlite_api.dart';

class IconModel extends BaseRepository {
  final int id;
  final int codePoint;
  final String fontFamily;
  final String fontPackage;
  final bool matchTextDirection;

  IconModel({this.id, this.codePoint, this.fontFamily, this.fontPackage, this.matchTextDirection}); 
  
  @override
  void createTable(Database db) {
    db.execute(
      "CREATE TABLE" + 
      "aim (id INTEGER PRIMARY KEY, codePoint INTEGER, fontFamily TEXT, fontPackage TEXT, end REAL, matchTextDirection NUMERIC)"
    );
  }
}