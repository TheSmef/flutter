
import 'package:dartz/dartz.dart';

import '../entity/role_entity.dart';

abstract class AuthRepositories {
  String get table;
  String get tableInfo;

  Future<Either<String, RoleEnum>> signIn(String login, String password);

  Future<Either<String, bool>> signUp(String login, String password, String lastname, String firstname, String otch);
}
