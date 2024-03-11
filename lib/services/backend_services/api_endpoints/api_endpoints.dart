// ignore_for_file: prefer_interpolation_to_compose_strings

class ApiEndpoints{


  static const String _baseUrl = "localhost:8080/";
  

  Uri vaultValues() {
    return Uri.parse(_baseUrl);
  }

  Uri userLogin(){
    return Uri.parse(_baseUrl + "login");
  }
}