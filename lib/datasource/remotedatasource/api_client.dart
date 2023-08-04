import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_sample/utils/log_util.dart';

class ApiClient {
  static const String tag = "ApiClient";
  static const String commonError = "Something went wrong";

  late final Dio _dio;

  ApiClient._privateConstructor();

  static final ApiClient _instance = ApiClient._privateConstructor();

  static ApiClient getInstance() => _instance;

  init(String basePath, Map<String, String?> headers) {
    _createDio(basePath, headers);
  }

  _createDio(String basePath, Map<String, String?> headers) {
    _dio = Dio(BaseOptions(
      baseUrl: basePath,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: headers,
      contentType: 'application/json',
    ));

    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(responseBody: true,));
    }
  }

  Future<ApiResponse> get(String path) async {
    return await _callApi(_dio.get(path));
  }

  Future<ApiResponse> post(String path, dynamic data, {Map<String, String?>? headers}) async {
    return await _callApi(_dio.post(path, data: data, options: headers != null ? Options(headers: headers) : null));
  }

  Future<ApiResponse> patch(String path, dynamic data, {Map<String, String?>? headers}) async {
    return await _callApi(_dio.patch(path, data: data, options: headers != null ? Options(headers: headers) : null));
  }

  Future<ApiResponse> delete(String path, dynamic data, {Map<String, String?>? headers}) async {
    return await _callApi(_dio.delete(path, data: data, options: headers != null ? Options(headers: headers) : null));
  }

  Future<ApiResponse> _callApi(Future<Response<dynamic>> apiCall) async {
    try {
      var response = await apiCall;
      LogUtil.log(tag, "Status Code: ${response.statusCode}");
      if (_isSuccessFull(response.statusCode)) {
        LogUtil.log(tag, "API Success");
        return ApiResponse.success(response.data);
      } else {
        LogUtil.log(tag, "API Failed");
        return ApiResponse.failure(response.data);
      }
    } catch (e) {
      LogUtil.log(tag, "API failed, Exception: $e");
      return ApiResponse.failure(e is DioException ? e.message : commonError);
    }
  }

  bool _isSuccessFull(int? statusCode) {
    return statusCode != null && (statusCode >= 200 && statusCode <= 204);
  }
}

class ApiResponse {
  dynamic data;
  dynamic error;
  final bool _success;

  ApiResponse({this.data, this.error, required bool success}) : _success = success;

  bool isSuccess() => _success;

  factory ApiResponse.success(dynamic data) => ApiResponse(data: data, success: true);

  factory ApiResponse.failure(dynamic error) => ApiResponse(error: error, success: false);
}