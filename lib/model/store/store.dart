import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:modu_3_dart_study/model/store/store_remain_status.dart';

part "store.freezed.dart";

@freezed
class Store with _$Store {
  static final unknownDate = DateTime(0);

  @override
  final String address;
  @override
  final String code;
  @override
  final DateTime createdAt;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String name;
  @override
  final StoreRemainStatus remainStatus;
  @override
  final DateTime stockAt;
  @override
  final String type;

  Store({
    required this.address,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStatus,
    required this.stockAt,
    required this.type,
  });
}
