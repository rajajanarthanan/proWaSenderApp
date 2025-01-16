import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'global_exports.dart';

Future<Either<SimplesError, T>> simplesCall<T>(Future<T> Function() toDo,
    {SimplesErrorType? errorType,
    String? errorCode,
    bool handleError = false}) async {
  try {
    final result = await toDo();
    return Right(result);
  } catch (e, stackTrace) {
    final error = SimplesError(e.toString(), stackTrace);
    if (errorType != null) error.type = errorType;
    if (errorCode != null) error.code = errorCode;
    if (handleError) {
      await simplesErrorHandler(error, errorType, errorCode);
    }
    return Left(error);
  }
}

simplesErrorHandler(SimplesError error, SimplesErrorType? type, String? code) {
  // TODO: implement simplesErrorHandler
  // TODO: remote logging if not network error
}

setLocale() {}
getLocale() {}
// stringToDateTime({SimplesDateTimeFormat format});
logger() {}

class SimplesError {
  String message;
  StackTrace? stackTrace;
  String? code;
  SimplesErrorType? type;
  SimplesError(this.message, {this.stackTrace, this.code, this.type});

  @override
  String toString() {
    return 'SimplesError{message: $message, stackTrace: $stackTrace, code: $code, type: $type}';
  }

  Future<void> generateLocales() async {
    final appStrings = Strings.props;
    final api = GetIt.instance<ApiService>();
    for (var locale in appLocales) {
      final gen = SimplesGenerateLocale(
          locale: locale, directoryName: "simplescore", strings: appStrings);
      await api.post(Config.generateLocaleUrl, SimplesGenerateLocale.fromJson,
          data: gen.toJson());
    }
  }
}

enum SimplesErrorType { generic, network, tts }

enum SimplesDateTimeFormat {
  mdyong,
  mdyy,
  mdy,
  dmy,
}
