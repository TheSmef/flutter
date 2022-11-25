import 'package:dartz/dartz.dart';
import 'package:pr/data/model/userinfo.dart';
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../core/crypto/crypto.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/reposiroties/auth_repositories.dart';
import '../model/user.dart';

class AuthRepositoryImlp implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;

  @override
  String get table => DataBaseRequest.tableUsers;
  @override
  String get tableInfo => DataBaseRequest.tableUserInfo;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var user = await _db.query(
        table,
        columns: ['login', 'password', 'id_role'],
        where: 'login = ?',
        whereArgs: [login],
      );
      if (user.isEmpty) {
        return const Left("Неправильные данные");
      }

      if (user.first['password'] != Crypto.crypto(password)) {
        return const Left("Неправильный пароль!");
      }

      return Right(RoleEnum.values[(user.first['id_role'] as int) - 1]);
    } on DatabaseException catch (e) {
      return const Left("Произошла неизвестная ошибка, попробуйте позже");
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password,
      String lastname, String firstname, String otch) async {
    try {
      var user = await _db.query(
        table,
        columns: ['login', 'password', 'id_role'],
        where: 'login = ?',
        whereArgs: [login],
      );
      if (user.isNotEmpty) {
        return const Left("Данный логин уже занят другим пользователем");
      }
      int id = 0;
      id = await _db.insert(
        table,
        User(
          login: login,
          password: Crypto.crypto(password),
          id_role: RoleEnum.user.id,
        ).toMap(),
      );
      if (id != 0) {
        await _db.insert(
          tableInfo,
          UserInfo(
            id: id,
            last_name: lastname,
            first_name: firstname,
            otch: otch,
          ).toMap(),
        );
      }
      return const Right(true);
    } on DatabaseException catch (e) {
      return const Left("Непредвиденная ошибка, попробуйте позже");
    }
  }
}
