import 'package:freezed_annotation/freezed_annotation.dart';

part "user2.freezed.dart";

@freezed
abstract class User2 with _$User2 {
  const factory User2({
    required int id,
    required String name,
  }) = _User2;
}
