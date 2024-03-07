part of 'auth_bloc.dart';

abstract class AuthEvent {
  var log = logger(AuthEvent);
  execute(AuthState state);
}
