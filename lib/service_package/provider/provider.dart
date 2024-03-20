import 'dart:convert';
import 'package:http/http.dart' as http;

class Provider {
  var headers = {
    // "Authorization": "Bearer $auth",
    "Accept": "application/json",
    "Access-Control-Allow-Origin": "*", // Required for CORS support to work
    "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE",
  };
  Future<dynamic> getApiCall({
    required String api,
    Map<String, dynamic>? query,
  }) async {
    var url = Uri.parse(api).replace(queryParameters: query);
    var response = http.Request('GET', url);
    response.headers.addAll(headers);
    var res = await response.send();
    final resBody = await res.stream.bytesToString();
    if (res.statusCode == 200) {
      return jsonDecode(resBody);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<dynamic> postApiCall({
    required String api,
    Map<String, dynamic>? query,
  }) async {}
}
