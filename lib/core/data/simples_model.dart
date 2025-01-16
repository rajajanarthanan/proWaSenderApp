import 'package:simplyfirescore/core/domain/simples_entity.dart';

abstract class SimplesModel {
  factory SimplesModel.fromEntity(SimplesEntity entity) =>
      throw UnimplementedError();
  SimplesEntity toEntity();
  factory SimplesModel.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();
  Map<String, dynamic> toJson();
}
