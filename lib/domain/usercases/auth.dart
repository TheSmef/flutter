import 'package:dartz/dartz.dart';

import '../../core/usercases/auth_usercase.dart';
import '../entity/role_entity.dart';
import '../reposiroties/auth_repositories.dart';

class Auth implements AuthUserCase<String, AuthParams> {
  final AuthRepositories authRepositories;

  Auth(this.authRepositories);

  @override
  Future<Either<String, bool>> signUp(RegParams params) async {
    return await authRepositories.signUp(params.login, params.password, params.lastname, params.firstname, params.otch);
  }

  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) async {
    return await authRepositories.signIn(params.login, params.password);
  }
}


class RegParams {
  final String login;
  final String password;
  final String lastname;
  final String firstname;
  final String otch;


  RegParams({
    required this.login,
    required this.password,
    required this.lastname,
    required this.firstname,
    required this.otch,
  });
}

class AuthParams {
  final String login;
  final String password;

  AuthParams({
    required this.login,
    required this.password,
  });
}
