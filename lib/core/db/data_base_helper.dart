import 'dart:io';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper{
    static final DataBaseHelper instance = DataBaseHelper._instance();
    late final String _pathDB;
    late final Database database;
    late int _version = 1;

    DataBaseHelper._instance();

    late final Directory _appDocumentDirectory;

    Future<void> init()async{
      _appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();

      _pathDB = join(_appDocumentDirectory.path, "carStore.db");

      if (Platform.isLinux || Platform.isWindows || Platform.isMacOS){

      }
      else{
          database = await openDatabase(
            _pathDB,
            version: _version,
            onCreate: (db, version){

            }
          )
      }


    }

    Future<void> onCreateTable(Database db) async{

    }

}