part of 'auth_bloc.dart';


abstract class AuthEvent {
  var log = Logger();
  execute(AuthState state);
}

class LoginEvent extends AuthEvent {
  LoginEvent(this.language, this.user);
  final String language;
  final User user;
  @override
  execute(AuthState state) async {
    log.t("Calling LoginEvent");
    UserLoginService().logUserLoginEvent();
    state.user = user;
  }
}
class NotifyStream extends AuthEvent {
  @override
  execute(AuthState state) async {
    log.t("Calling NotifyStream");
  }
}