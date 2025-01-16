import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simplyfirescore/simplyfirescore.dart';

abstract class SimplesResult<T> {}

class SimplesTypeResult<T> extends Equatable implements SimplesResult<T> {
  final T value;
  const SimplesTypeResult(this.value);

  @override
  List<Object?> get props => [this.value];
}

class SimplesListResult<T> extends Equatable implements SimplesResult<T> {
  final List<T> value;
  const SimplesListResult(this.value);

  @override
  List<Object?> get props => [...this.value];
}

abstract class SimplesRepository {
  // Future<Either<SimplesError, SimplesResult<T>>> getApi<T>(
  //     String endPoint, T Function(Map<String, dynamic> json) fromJson,
  //     {Map<String, dynamic> queryParameters = const {},
  //     Map<String, dynamic> headers = const {
  //       'Content-Type': 'application/json'
  //     }});

  Future<Either<SimplesError, UserCredential>> firebaseLoginWithEmailPassword(
      String email, String password);
}
