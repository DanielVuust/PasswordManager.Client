// ignore_for_file: prefer_interpolation_to_compose_strings

class ApiEndpoints{


  static const String _baseUrl = "https://10.0.2.2:62598/api/";

  Uri passwordsUri(){
    return Uri.parse(_baseUrl + "user/passwords");
  }
  Uri passwordsUriWithId(String passwordId){
    return Uri.parse(_baseUrl + "user/passwords/" + passwordId);
  }

  Uri generatePassword(Map<String, dynamic> queryparameters ){
    String queryString = Uri(queryParameters: queryparameters).query;
    return Uri.parse(_baseUrl + "generate/password?" + queryString);

  }
}