part of 'reg_status_cubit.dart';

@immutable
abstract class RegStatusState {}

class RegDisabled extends RegStatusState {}

class RegEnabled extends RegStatusState {}
