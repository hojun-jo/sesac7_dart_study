import 'dart:io';

import 'package:modu_3_dart_study/assignments/file/file_operations.dart';

class DefaultFileOperations implements FileOperations {
  @override
  void copy(String sourcePath, String targetPath) {
    final source = File(sourcePath);
    final contents = source.readAsStringSync();
    final target = File(targetPath);
    target.writeAsStringSync(contents);
  }
}
