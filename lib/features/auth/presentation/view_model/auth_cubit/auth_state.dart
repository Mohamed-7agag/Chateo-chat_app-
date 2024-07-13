part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoginLoading extends AuthState {}

final class AuthLoginSuccess extends AuthState {}

final class AuthLoginFailure extends AuthState {
  final String errMessage;

  AuthLoginFailure({required this.errMessage});
}

final class AuthRegisterLoading extends AuthState {}

final class AuthRegisterSuccess extends AuthState {}

final class AuthRegisterFailure extends AuthState {
  final String errMessage;

  AuthRegisterFailure({required this.errMessage});
}