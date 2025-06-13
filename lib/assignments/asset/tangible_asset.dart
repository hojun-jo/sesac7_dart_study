import 'package:modu_3_dart_study/assignments/asset/asset.dart';

abstract class TangibleAsset extends Asset {
  final String color;

  TangibleAsset(super.name, {required super.price, required this.color});
}
