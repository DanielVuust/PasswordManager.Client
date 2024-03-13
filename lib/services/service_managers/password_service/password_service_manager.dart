import 'package:logger/logger.dart';

import '../../../models/dto_models/password.dart';
import '../../backend_services/api_utilities/api_exception.dart';
import '../../backend_services/password_api_service/password_api_service.dart';

class PasswordServiceManager {
  Future<List<Password>> getPasswords() async {

    PasswordApiService passwordApiService = PasswordApiService();
    try{
      return passwordApiService.getPasswords();

    }
    on ApiException {
      rethrow;
    }
  }
  Future<bool> createPassword(Password password) async {
    Logger logger = Logger();
    logger.d("Caling PasswordServiceManager.craetePassword");
    PasswordApiService passwordApiService = PasswordApiService();
    try{
      return passwordApiService.createPassword(password);

    }
    on ApiException {
      rethrow;
    }
  }
  Future<String> generatePassword(double length) async {
    Logger logger = Logger();
    logger.d("Caling PasswordServiceManager.generatePassword");
    PasswordApiService passwordApiService = PasswordApiService();
    try{
      return passwordApiService.generatePassword(length);

    }
    on ApiException {
      rethrow;
    }
  }
  Future<bool> updatePassword(Password password) async {
    Logger logger = Logger();
    logger.d("Caling PasswordServiceManager.updatePassword");
    PasswordApiService passwordApiService = PasswordApiService();
    try{
      return passwordApiService.updatePassword(password);

    }
    on ApiException {
      rethrow;
    }
  }
}
