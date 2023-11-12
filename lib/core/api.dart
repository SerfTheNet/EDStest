import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:eclipse_test/core/config.dart';
import 'package:http/http.dart';

class BaseApi {
  Uri _formatUrl(
    String relativeUrl, [
    Map<String, String>? params,
  ]) {
    assert(Config.scheme == 'https' || Config.scheme == 'http');

    return Uri(
      scheme: Config.scheme,
      host: Config.baseUrl,
      path: relativeUrl,
      queryParameters: params,
    );
  }

  Future<ApiResponse<T>> sendGetRequest<T>(
    String relativeUrl, {
    Map<String, String>? params,
    T Function(dynamic)? parserCallback,
    bool needParseList = false,
  }) async {
    final uri = _formatUrl(relativeUrl, params);
    final Response response;

    try {
      response = await http.get(uri);
    } catch (e) {
      return ApiResponse<T>(error: 'Error while sending request');
    }

    if (response.statusCode != 200) {
      return ApiResponse<T>(
        error: 'HTTP Error: ${response.reasonPhrase ?? 'Unknown HTTP error'}',
        httpResponse: response,
      );
    }

    if (parserCallback == null) {
      return ApiResponse<T>(
        httpResponse: response,
      );
    }

    dynamic responseJson;
    try {
      responseJson = json.decode(response.body);
    } catch (e) {
      return ApiResponse<T>(
        error: 'Error while decoding response body',
        httpResponse: response,
      );
    }

    try {
      final result = parserCallback(responseJson);
      return ApiResponse<T>(
        httpResponse: response,
        result: result,
      );
    } catch (e) {
      return ApiResponse<T>(
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
