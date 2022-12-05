part of 'user_cubit_cubit.dart';

@immutable
abstract class UserCubitState {}

class UserCubitInitial extends UserCubitState {}
class LoginUserLoaded extends UserCubitState {}
class LoginUserDone extends UserCubitState {}
class LoginUserError extends UserCubitState {}
class CreateAccountUserDone extends UserCubitState {}
class CreateAccountUserLoaded extends UserCubitState {}
class CreateAccountUserError extends UserCubitState {}