import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:simplyfirescore/core/domain/simples_repository.dart';
import 'package:simplyfirescore/core/services/auth_service.dart';

import '../app/global_exports.dart';

class SimplesRepoSitoryImpl implements SimplesRepository {
  final ApiService _api = GetIt.I.get<ApiService>();

  // Future<Either<SimplesError, SimplesResult<T>>> getApi<T>(
  //     String endPoint, T Function(Map<String, dynamic> json) fromJson,
  //     {Map<String, dynamic> queryParameters = const {},
  //     Map<String, dynamic> headers = const {'Content-Type': 'application/json'},
  //     String baseUrl = Config.simplesApiBaseUrl}) async {
  //   final response = await _api.get(
  //     baseUrl + endPoint,
  //     fromJson,
  //     queryParameters: queryParameters,
  //     headers: headers,
  //   );
  // }

  @override
  Future<Either<SimplesError, UserCredential>> firebaseLoginWithEmailPassword(
      String email, String password) {
    return simplesCall(() async {
      final authService = GetIt.I.get<AuthService>();
      return await authService.signIn(email, password);
    });
  }
}
