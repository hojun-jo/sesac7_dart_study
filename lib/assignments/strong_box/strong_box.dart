import 'package:modu_3_dart_study/assignments/strong_box/key_type.dart';

class StrongBox<T> {
  final KeyType key;

  T? item;

  int _openTryCount = 0;

  StrongBox({required this.key});

  void put(T item) {
    this.item = item;
  }

  T? get() {
    if (_openTryCount < key.tryLimit) {
      _openTryCount++;
      return null;
    }

    return item;
  }
}
