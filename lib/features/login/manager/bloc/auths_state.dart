part of 'auths_bloc.dart';

@immutable
sealed class AuthsState {}

final class AuthsInitial extends AuthsState {}

final class Authsloading extends AuthsState {}

final class AuthsLoginSucess extends AuthsState {
  final String uil;

  AuthsLoginSucess({required this.uil});
}

final class AuthsLoginfailure extends AuthsState {
  final String emassage;

  AuthsLoginfailure({required this.emassage});
}

final class AuthsRegistorloading extends AuthsState {}

final class AuthsRegistorfailure extends AuthsState {
  final String emassage;

  AuthsRegistorfailure({required this.emassage});
}

final class AuthsRegistorSucess extends AuthsState {}

final class AuthsloadingGoogle extends AuthsState {}

final class AuthsGoogleSucess extends AuthsState {}

final class AuthsGooglefailure extends AuthsState {
  final String emassage;

  AuthsGooglefailure({required this.emassage});
}

final class Resetloading extends AuthsState {}

final class AuthsResetSucess extends AuthsState {}

final class AuthsResetfailure extends AuthsState {
  final String emassage;

  AuthsResetfailure({required this.emassage});
}
