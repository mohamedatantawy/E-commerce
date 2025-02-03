part of 'auths_bloc.dart';

@immutable
sealed class AuthsEvent {}

class LoginEvent extends AuthsEvent {
  final String password, email;

  LoginEvent({required this.password, required this.email});
}

class RegistorEvent extends AuthsEvent {
  final String password, email;
  final Usersmodel usersmodel;
  RegistorEvent(
      {required this.usersmodel, required this.password, required this.email});
}

class GoogleSigninEvent extends AuthsEvent {}

class Resetevent extends AuthsEvent {
  final String email;

  Resetevent({required this.email});
}
