abstract class DataBaseRequest {
  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';
  static const String tableUsers = 'Users';
  static const String tableMarka = 'Marka';
  static const String tableModel = 'Model';
  static const String tableFile = 'File';
  static const String tableUserInfo = 'UserInfo';
  static const String tableCar = 'Car';
  static const String tableFileCar = 'FileCar';
  static const String tableFavorite = 'Favorite';

  static const List<String> tables = [tableRole, tableUsers, tableMarka, tableModel, tableFile, tableUserInfo, tableCar, tableFileCar, tableFavorite];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableMarka,
    _createTableModel,
    _createTableCar,
    _createTableUserInfo,
    _createTableFile,
    _createTableFileCar,
    _createTableFavorite
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUsers" ("id" INTEGER,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") on delete cascade, PRIMARY KEY("id"))';

  static const String _createTableMarka =
      'CREATE TABLE "$tableMarka" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  static const String _createTableModel =
      'CREATE TABLE "$tableModel" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE,"summary" TEXT NOT NULL , "id_marka" INTEGER,FOREIGN KEY("id_marka") REFERENCES "Marka"("id") on delete cascade,  PRIMARY KEY("id"))';

  static const String _createTableCar =
      'CREATE TABLE "$tableCar" ("id" INTEGER,"name" TEXT NOT NULL, "summary" TEXT NOT NULL, "mileage" integer NOT NULL, PRIMARY KEY("id"))';

  static const String _createTableUserInfo =
      'CREATE TABLE "$tableUserInfo" ("id" INTEGER,  "last_name" TEXT NOT NULL, "first_name" TEXT NOT NULL, "Otch" TEXT NOT NULL, PRIMARY KEY("id"), FOREIGN KEY("id") REFERENCES "Users"("id") on delete cascade)';

  static const String _createTableFavorite =
      'CREATE TABLE "$tableFavorite" ("id" INTEGER, "id_user" INTEGER, FOREIGN KEY("id_user") REFERENCES "Users"("id") on delete cascade, PRIMARY KEY("id"),  FOREIGN KEY("id") REFERENCES "Car"("id") on delete cascade)';

  static const String _createTableFile =
      'CREATE TABLE "$tableFile" ("id" INTEGER, "name" TEXT NOT NULL, "content" TEXT NOT NULL, "extension" TEXT NOT NULL, "cringe_content" TEXT NOT NULL, PRIMARY KEY("id"))';

        static const String _createTableFileCar =
      'CREATE TABLE "$tableFileCar" ("id" INTEGER,  "id_car" INTEGER, FOREIGN KEY("id") REFERENCES "Car"("id") on delete cascade,  PRIMARY KEY("id"), FOREIGN KEY("id") REFERENCES "File"("id") on delete cascade)';

  static String deleteTable(String table) => 'DROP TABLE $table';
}
