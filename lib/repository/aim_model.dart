import 'package:aimio/helpers/database_provider.dart';
import 'package:aimio/repository/base_repository.dart';
import 'package:aimio/repository/icon_model.dart';
import 'package:sqflite/sqflite.dart';

class AimModel extends BaseRepository
{
  final int id;
  final String title;
  final String definition;
  final double start;
  final double end;
  final int iconId;
  final IconModel iconModel;

  AimModel({this.id, this.title, this.definition, this.start, this.end, this.iconId, this.iconModel});

  @override
  void createTable(Database db) {
    db.execute(
      "CREATE TABLE" + 
      " aim (id INTEGER PRIMARY KEY, title TEXT, definition TEXT, start REAL, end REAL, iconId INTEGER)"
    );
  }

  factory AimModel.fromMap(Map<String, dynamic> map) => AimModel(
    id: map["id"],
    title: map["title"],
    definition: map["definition"],
    start: map["start"],
    end: map["end"],
    iconId: map["iconId"],
    iconModel: IconModel.fromMap(map),
  );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["id"] = this.id;
    map["title"] = this.title;
    map["definition"] = this.definition;
    map["start"] = this.start;
    map["end"] = this.end;
    map["iconId"] = this.iconId;
    return map;
  }

  static Future<List<AimModel>> getAims() async {
    var db = await DatabaseProvider.db.database;
    var resources = (await db.query("aim JOIN icon ON aim.iconId = icon.id"));
    return resources.toList().map((map) => AimModel.fromMap(map)).toList();
  }

  static Future<int> newAim(AimModel aim) async {
    var db = await DatabaseProvider.db.database;
    var aimResult = await db.insert("aim", aim.toMap());
    if (aim.iconModel != null){
      var iconResult = await db.insert("icon", aim.iconModel.toMap());
      return aimResult * iconResult;
    }
    return aimResult;
  }
}