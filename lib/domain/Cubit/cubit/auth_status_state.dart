part of 'auth_status_cubit.dart';

@immutable
abstract class AuthStatusState {}

class AuthDisabled extends AuthStatusState {}

class AuthEnabled extends AuthStatusState {}
