import 'package:aimio/repository/aim_model.dart';
import 'package:aimio/repository/base_repository.dart';
import 'package:aimio/repository/icon_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();
  static Database _database;

  final List<BaseRepository> repositories = [
    AimModel(),
    IconModel(),
  ];

  Future<Database> get database async {
    if (_database != null)
    return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    String path = join(await getDatabasesPath(), "aimio.db");
    return await openDatabase(
      path, 
      version: 1, 
      onOpen: (db) => onOpen, 
      onCreate: (db, version) => onCreate(db, version)
    );
  }

  onOpen(Database db) {

  }

  onCreate(Database db, int version) async {
    for (var repository in repositories) {
      repository.createTable(db);
    }
  }
}