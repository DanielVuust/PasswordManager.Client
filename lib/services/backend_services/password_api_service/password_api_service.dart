import 'dart:convert';

import 'package:password_manager_client/services/backend_services/api_utilities/api_exception.dart';
import 'package:password_manager_client/services/backend_services/api_utilities/http_extension.dart';
import 'package:password_manager_client/services/backend_services/base_api_service.dart';

import '../../../models/dto_models/password.dart';

class PasswordApiService extends BaseApiService{

  Future<List<Password>> getPasswords() async {
    

    Uri endpoint = apiEndpoints.passwordsUri();

    var response = await httpExecutor.get(endpoint);

    if(!response.isOk){
      logger.d("Api call get passwords failed with status code ${response.statusCode} and body ${response.body}");
      throw ApiException(response.statusCode, response.body);
    }
    List<Password> passwords =
            List<Password>.from(json.decode(response.body).map((model) => Password.fromJson(model)));
    return passwords;
    
  }
  Future<bool> createPassword(Password password) async {
    Uri endpoint = apiEndpoints.passwordsUri();
    //todo change createdByUser.
    Object body = {"details": password.toJson(), "createdByUserId": "1"};
    var response = await httpExecutor.post(endpoint, body: body as Map<String, dynamic>);

    if(!response.isOk){
      logger.d("Api call create password failed with status code ${response.statusCode} and body ${response.body}");
      throw ApiException(response.statusCode, response.body);
    }

    return true;
  }
  Future<bool> updatePassword(Password password) async {
    Uri endpoint = apiEndpoints.passwordsUriWithId(password.id!);

    var response = await httpExecutor.put(endpoint, body: password.toJson());

    if(!response.isOk){
      logger.d("Api call update password failed with status code ${response.statusCode} and body ${response.body}");
      throw ApiException(response.statusCode, response.body);
    }

    return true;
  }
  Future<String> generatePassword(double length) async {
    Map<String, dynamic> query = {"PasswordLength": length.round().toString()};
    Uri endpoint = apiEndpoints.generatePassword(query);
    var response = await httpExecutor.get(endpoint,);

    if(!response.isOk){
      logger.d("Api call generate password failed with status code ${response.statusCode} and body ${response.body}");
      throw ApiException(response.statusCode, response.body);
    }

    return  json.decode(response.body)["password"];
  }
}
