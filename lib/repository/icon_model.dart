import 'package:aimio/repository/base_repository.dart';
import 'package:sqflite/sqlite_api.dart';

class IconModel extends BaseRepository {
  final int id;
  final int codePoint;
  final String fontFamily;
  final String fontPackage;
  final bool matchTextDirection;

  IconModel({this.id, this.codePoint, this.fontFamily, this.fontPackage, this.matchTextDirection});

  factory IconModel.fromMap(Map<String, dynamic> map) => IconModel (
    id: map["id"],
    codePoint: map["codePoint"],
    fontFamily: map["fontFamily"],
    fontPackage: map["fontPackage"],
    matchTextDirection: map["matchTextDirection"],
  );

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map;
    map["id"] = this.id;
    map["codePoint"] = this.codePoint;
    map["fontFamily"] = this.fontFamily;
    map["fontPackage"] = this.fontPackage;
    map["matchTextDirection"] = this.matchTextDirection;
    return map;
  }
  
  @override
  void createTable(Database db) {
    db.execute(
      "CREATE TABLE" + 
      "icon (id INTEGER PRIMARY KEY, codePoint INTEGER, fontFamily TEXT, fontPackage TEXT, end REAL, matchTextDirection NUMERIC)"
    );
  }
}