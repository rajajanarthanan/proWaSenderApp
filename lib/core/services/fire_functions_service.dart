import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';

import '../app/global_exports.dart';

class FireFunctionsService {
  late final FirebaseFunctions fireFunctions;

  FireFunctionsService(this.fireFunctions);

  Future<Either<SimplesError, dynamic>> callFunction(
      String functionName) async {
    return simplesCall(() async {
      HttpsCallable callable = fireFunctions.httpsCallable(
        functionName,
        options: HttpsCallableOptions(
          timeout: const Duration(seconds: 1800),
        ),
      );
      final result = await callable.call();
      return result.data;
    });
  }
}
