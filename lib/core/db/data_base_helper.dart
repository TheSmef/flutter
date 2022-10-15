import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:pr/common/data_base_request.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../../data/model/role.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();
  late final String _pathDB;
  late final Database database;
  late int _version = 1;
  late final Directory _appDocumentDirectory;

  DataBaseHelper._instance();

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumentDirectory.path, "carStore.db");

    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      sqfliteFfiInit();
      Database db = await databaseFactoryFfi.openDatabase(_pathDB,options: OpenDatabaseOptions(
        version: _version,
        onCreate: (db, version) async { await onCreateTable(db);},
        onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
      ));
      
    
    } else {
      database = await openDatabase(_pathDB,
          version: _version,
          onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)),
          onCreate: (db, version) async {
        await onCreateTable(db);
      });
    }
  }

  Future<void> onCreateTable(Database db) async {
    for (var i = 0; i < DataBaseRequest.tables.length; i++) {
      await db.execute(DataBaseRequest.tableCreateList[i]);
    }
    await onInittable(db);
  }

  Future<void> onInittable(Database db) async {
    try {
      db.insert(DataBaseRequest.tableRole, Role(role: 'Администратор').toMap());
      db.insert(DataBaseRequest.tableRole, Role(role: 'Пользователь').toMap());
    } on DatabaseException catch (e) {}
  }

  onUpdateTable(Database db) async {
    var tables = await db.rawQuery('select name from sqllite_master');
    for (var table in DataBaseRequest.tables) {
      if (tables.contains(table)) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }

    for (var element in DataBaseRequest.tableCreateList) {
      await db.execute(element);
    }
    await onInittable(db);
  }
}
