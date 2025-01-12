import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
import 'mock_dio.mocks.dart';

void main() {
  final mockDio = MockDio();
}
