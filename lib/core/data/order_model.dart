import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required String userId,
    required String eventId,
    required double price,
    required int quantity,
    required String type,
    required bool isExited,
    required String status,
    required int pendingQuantity,
    required int matchedQuantity,
    required int cancelledQuantity,
    required int exitingQuantity,
    required int exitedQuantity,
    required double refundedAmount,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int orderNumber,
    required String orderSequence,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  @override
  toEntity() {
    throw UnimplementedError();
  }
}
