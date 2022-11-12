import 'package:dartz/dartz.dart';
import 'package:pr/domain/usercases/auth.dart';

import '../../domain/entity/role_entity.dart';

abstract class AuthUserCase<Type, Params> {
  Future<Either<Type, RoleEnum>> signIn(Params params);
  Future<Either<Type, bool>> signUp(RegParams params);
}