import 'package:logger/logger.dart';

class UserLoginService {
  final Logger _logger = Logger();

  void logUserLoginEvent() {
    _logger.d("Calling logUserLoginEvent()");
  }
}
