import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
import 'package:dio/dio.dart';

import 'mock_dio.mocks.dart';

void main() {
  Dio dio = MockDio();
}
