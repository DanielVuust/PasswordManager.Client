import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class HttpExecutor {
  Logger log = Logger();
  Future<http.Response> get(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    log.t("Calling get with uri $uri");
    headers ??= <String, String>{};

    return await http.get(uri, headers: headers);
  }

  Future<http.Response> post(Uri uri,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    log.v("Calling post with uri $uri and body $body");

    headers ??= <String, String>{};

    headers["Content-Type"] = "application/json";
    headers["created-by-user-id"] = "1";


    return await http.post(uri, body: json.encode(body), headers: headers);
  }

  Future<http.Response> delete(Uri uri,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    log.v("Calling delete with uri $uri and body $body");

    headers ??= <String, String>{};

    headers["Content-Type"] = "application/json";
    headers["created-by-user-id"] = "1";


    return await http.delete(uri, body: json.encode(body), headers: headers);
  }

  Future<http.Response> put(Uri uri,
      {Map<String, String>? headers, Map<String, dynamic>? body}) async {
    log.v("Calling delete with uri $uri and body $body");

    headers ??= <String, String>{};

    headers["Content-Type"] = "application/json";
    headers["created-by-user-id"] = "1";


    return await http.put(uri, body: json.encode(body), headers: headers);
  }

}
