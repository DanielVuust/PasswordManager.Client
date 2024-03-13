import 'package:logger/logger.dart';

class UserApiService {
  final Logger _logger = Logger();

  void logUserLoginEvent() {
    _logger.d("Calling logUserLoginEvent()");
  }
}
