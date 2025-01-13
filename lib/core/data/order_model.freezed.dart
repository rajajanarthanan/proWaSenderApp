// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get userId => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isExited => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get pendingQuantity => throw _privateConstructorUsedError;
  int get matchedQuantity => throw _privateConstructorUsedError;
  int get cancelledQuantity => throw _privateConstructorUsedError;
  int get exitingQuantity => throw _privateConstructorUsedError;
  int get exitedQuantity => throw _privateConstructorUsedError;
  double get refundedAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get orderNumber => throw _privateConstructorUsedError;
  String get orderSequence => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String userId,
      String eventId,
      double price,
      int quantity,
      String type,
      bool isExited,
      String status,
      int pendingQuantity,
      int matchedQuantity,
      int cancelledQuantity,
      int exitingQuantity,
      int exitedQuantity,
      double refundedAmount,
      DateTime createdAt,
      DateTime updatedAt,
      int orderNumber,
      String orderSequence});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? eventId = null,
    Object? price = null,
    Object? quantity = null,
    Object? type = null,
    Object? isExited = null,
    Object? status = null,
    Object? pendingQuantity = null,
    Object? matchedQuantity = null,
    Object? cancelledQuantity = null,
    Object? exitingQuantity = null,
    Object? exitedQuantity = null,
    Object? refundedAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? orderNumber = null,
    Object? orderSequence = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isExited: null == isExited
          ? _value.isExited
          : isExited // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      pendingQuantity: null == pendingQuantity
          ? _value.pendingQuantity
          : pendingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      matchedQuantity: null == matchedQuantity
          ? _value.matchedQuantity
          : matchedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      cancelledQuantity: null == cancelledQuantity
          ? _value.cancelledQuantity
          : cancelledQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      exitingQuantity: null == exitingQuantity
          ? _value.exitingQuantity
          : exitingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      exitedQuantity: null == exitedQuantity
          ? _value.exitedQuantity
          : exitedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      refundedAmount: null == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      orderSequence: null == orderSequence
          ? _value.orderSequence
          : orderSequence // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String eventId,
      double price,
      int quantity,
      String type,
      bool isExited,
      String status,
      int pendingQuantity,
      int matchedQuantity,
      int cancelledQuantity,
      int exitingQuantity,
      int exitedQuantity,
      double refundedAmount,
      DateTime createdAt,
      DateTime updatedAt,
      int orderNumber,
      String orderSequence});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? eventId = null,
    Object? price = null,
    Object? quantity = null,
    Object? type = null,
    Object? isExited = null,
    Object? status = null,
    Object? pendingQuantity = null,
    Object? matchedQuantity = null,
    Object? cancelledQuantity = null,
    Object? exitingQuantity = null,
    Object? exitedQuantity = null,
    Object? refundedAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? orderNumber = null,
    Object? orderSequence = null,
  }) {
    return _then(_$OrderModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isExited: null == isExited
          ? _value.isExited
          : isExited // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      pendingQuantity: null == pendingQuantity
          ? _value.pendingQuantity
          : pendingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      matchedQuantity: null == matchedQuantity
          ? _value.matchedQuantity
          : matchedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      cancelledQuantity: null == cancelledQuantity
          ? _value.cancelledQuantity
          : cancelledQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      exitingQuantity: null == exitingQuantity
          ? _value.exitingQuantity
          : exitingQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      exitedQuantity: null == exitedQuantity
          ? _value.exitedQuantity
          : exitedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      refundedAmount: null == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      orderSequence: null == orderSequence
          ? _value.orderSequence
          : orderSequence // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.userId,
      required this.eventId,
      required this.price,
      required this.quantity,
      required this.type,
      required this.isExited,
      required this.status,
      required this.pendingQuantity,
      required this.matchedQuantity,
      required this.cancelledQuantity,
      required this.exitingQuantity,
      required this.exitedQuantity,
      required this.refundedAmount,
      required this.createdAt,
      required this.updatedAt,
      required this.orderNumber,
      required this.orderSequence});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String eventId;
  @override
  final double price;
  @override
  final int quantity;
  @override
  final String type;
  @override
  final bool isExited;
  @override
  final String status;
  @override
  final int pendingQuantity;
  @override
  final int matchedQuantity;
  @override
  final int cancelledQuantity;
  @override
  final int exitingQuantity;
  @override
  final int exitedQuantity;
  @override
  final double refundedAmount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int orderNumber;
  @override
  final String orderSequence;

  @override
  String toString() {
    return 'OrderModel(userId: $userId, eventId: $eventId, price: $price, quantity: $quantity, type: $type, isExited: $isExited, status: $status, pendingQuantity: $pendingQuantity, matchedQuantity: $matchedQuantity, cancelledQuantity: $cancelledQuantity, exitingQuantity: $exitingQuantity, exitedQuantity: $exitedQuantity, refundedAmount: $refundedAmount, createdAt: $createdAt, updatedAt: $updatedAt, orderNumber: $orderNumber, orderSequence: $orderSequence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isExited, isExited) ||
                other.isExited == isExited) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pendingQuantity, pendingQuantity) ||
                other.pendingQuantity == pendingQuantity) &&
            (identical(other.matchedQuantity, matchedQuantity) ||
                other.matchedQuantity == matchedQuantity) &&
            (identical(other.cancelledQuantity, cancelledQuantity) ||
                other.cancelledQuantity == cancelledQuantity) &&
            (identical(other.exitingQuantity, exitingQuantity) ||
                other.exitingQuantity == exitingQuantity) &&
            (identical(other.exitedQuantity, exitedQuantity) ||
                other.exitedQuantity == exitedQuantity) &&
            (identical(other.refundedAmount, refundedAmount) ||
                other.refundedAmount == refundedAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderSequence, orderSequence) ||
                other.orderSequence == orderSequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      eventId,
      price,
      quantity,
      type,
      isExited,
      status,
      pendingQuantity,
      matchedQuantity,
      cancelledQuantity,
      exitingQuantity,
      exitedQuantity,
      refundedAmount,
      createdAt,
      updatedAt,
      orderNumber,
      orderSequence);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }

  @override
  toEntity() {
    // TODO: implement toEntity
    throw UnimplementedError();
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final String userId,
      required final String eventId,
      required final double price,
      required final int quantity,
      required final String type,
      required final bool isExited,
      required final String status,
      required final int pendingQuantity,
      required final int matchedQuantity,
      required final int cancelledQuantity,
      required final int exitingQuantity,
      required final int exitedQuantity,
      required final double refundedAmount,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int orderNumber,
      required final String orderSequence}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get eventId;
  @override
  double get price;
  @override
  int get quantity;
  @override
  String get type;
  @override
  bool get isExited;
  @override
  String get status;
  @override
  int get pendingQuantity;
  @override
  int get matchedQuantity;
  @override
  int get cancelledQuantity;
  @override
  int get exitingQuantity;
  @override
  int get exitedQuantity;
  @override
  double get refundedAmount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get orderNumber;
  @override
  String get orderSequence;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
