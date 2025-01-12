import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../core/app/global_exports.dart';

class WidgetController extends GetxController {
  RxString resultText = ''.obs;

  Future<void> test() async {
    resultText.value = "test";
    // final result = await testApiServiceGet();
    final result = await testFileStorageWeb_putCacheContent();
    resultText.value = result.toString();
  }

  Future<dynamic> testApiServiceGet() async {
    ApiService api = ApiService(Dio());
    final result = await api.get<TestResponseType>(
        "https://jsonplaceholder.typicode.com/todos/1",
        TestResponseType.fromJson);
    result.fold((l) => print('left'), (r) => print(r));
    return result;
  }

  Future<dynamic> testFileStorageWeb_putCacheContent() async {
    if (kIsWeb) {}
  }
}

class TestResponseType extends Equatable {
  int userId;
  int id;
  String title;
  bool completed;
  TestResponseType(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});
  static TestResponseType fromJson(Map<String, dynamic> json) {
    return TestResponseType(
      userId: json['userId'] ?? 1,
      id: json['id'] ?? 1,
      title: json['title'] ?? "delectus aut autem",
      completed: json['completed'] ?? false,
    );
  }

  @override
  List<Object?> get props => [userId, id, title, completed];
}
