import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:simplyfirescore/widget_controller.dart';
import 'package:simplyfirescore/core/services/api_service.dart';

import '../../mocks/mock_dio.mocks.dart';

var respose1 = TestResponseType(
    userId: 1, id: 1, title: 'delectus aut autem', completed: false);

void main() {
  late ApiService api;
  Dio dio = MockDio();
  // Dio dio = Dio();
  setUpAll(() {
    api = ApiService(dio);
  });
  group(
    'ApiService',
    () {
      test(
        'get success',
        () async {
          const url = 'https://jsonplaceholder.typicode.com/todos/1';
          final apiResponse = Response(
            data: {
              'userId': 1,
              'id': 1,
              'title': 'delectus aut autem',
              'completed': false
            },
            statusCode: 200,
            requestOptions: RequestOptions(path: url),
          );

          when(dio.get(url,
                  data: anyNamed('data'),
                  queryParameters: anyNamed('queryParameters'),
                  options: anyNamed('options')))
              .thenAnswer((_) async => apiResponse);

          final response = await api.get<TestResponseType>(
              'https://jsonplaceholder.typicode.com/todos/1',
              TestResponseType.fromJson);
          final result = response.fold((l) {
            print(l.toString());
            return l;
          }, (r) => r);
          expect(result, equals(respose1));
        },
      );

      test(
        'post success',
        () async {
          const url = 'https://demoqa.com/BookStore/v1/Books';
          final apiResponse = Response(
            data: {
              'userId': 1,
              'id': 1,
              'title': 'delectus aut autem',
              'completed': false
            },
            statusCode: 200,
            requestOptions: RequestOptions(path: url),
          );

          when(dio.post(url,
                  data: anyNamed('data'),
                  queryParameters: anyNamed('queryParameters'),
                  options: anyNamed('options')))
              .thenAnswer((_) async => apiResponse);

          final response = await api.post<TestResponseType>(
              'https://demoqa.com/BookStore/v1/Books',
              TestResponseType.fromJson);
          final result = response.fold((l) {
            print(l.toString());
            return l;
          }, (r) => r);
          expect(result, equals(respose1));
        },
      );
    },
  );
}
