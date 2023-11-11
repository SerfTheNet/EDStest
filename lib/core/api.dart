import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:eclipse_test/core/config.dart';
import 'package:http/http.dart';

class BaseApi {
  Uri _formatUrl(
    String relativeUrl, [
    Map<String, String>? params,
  ]) {
    assert(Config.scheme == 'http' || Config.scheme == 'http');

    return Uri(
      scheme: Config.scheme,
      host: Config.baseUrl,
      path: relativeUrl,
      queryParameters: params,
    );
  }

  Future<ApiResponse> sendGetRequest<T>(
    String relativeUrl, {
    Map<String, String>? params,
    T Function(Map<String, dynamic>)? parserCallback,
  }) async {
    final uri = _formatUrl(relativeUrl, params);
    final response = await http.post(uri);

    if (response.statusCode != 200) {
      return ApiResponse(
        error: 'HTTP Error: ${response.reasonPhrase ?? 'Unknown HTTP error'}',
        httpResponse: response,
      );
    }

    if (parserCallback == null) {
      return ApiResponse<String>(
        result: response.body,
        httpResponse: response,
      );
    }

    Map<String, dynamic> json;
    try {
      json = jsonDecode(response.body);
    } catch (e) {
      return ApiResponse(
        error: 'Error while decoding response body',
        httpResponse: response,
      );
    }

    try {
      final result = parserCallback(json);
      return ApiResponse<T>(
        httpResponse: response,
        result: result,
      );
    } catch (e) {
      return ApiResponse(
        error: 'Error while parsing response body',
        httpResponse: response,
      );
    }
  }
}

class ApiResponse<T> {
  String? error;
  T? result;
  Response? httpResponse;

  ApiResponse({
    this.result,
    this.error,
    this.httpResponse,
  });

  bool get isError => error != null;
}
