import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../app/simples_helpers.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<Either<SimplesError, T>> get<T>(
    String url,
    T Function(Map<String, dynamic> json) fromJson, {
    dynamic data,
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> headers = const {'Content-Type': 'application/json'},
    ResponseType responseType = ResponseType.json,
  }) async {
    return await simplesCall(() async {
      final response = await _dio.get(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseType,
          followRedirects: true,
        ),
      );
      return fromJson(response.data);
    });
  }

  Future<Either<SimplesError, T>> post<T>(
    String url,
    T Function(Map<String, dynamic> json) fromJson, {
    dynamic data,
    Map<String, dynamic> queryParameters = const {},
    Map<String, dynamic> headers = const {'Content-Type': 'application/json'},
    ResponseType responseType = ResponseType.json,
  }) async {
    return await simplesCall(() async {
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseType,
          followRedirects: true,
        ),
      );
      return fromJson(response.data);
    });
  }
}
