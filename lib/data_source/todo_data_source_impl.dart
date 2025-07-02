import 'dart:convert';
import 'dart:io';

import 'package:modu_3_dart_study/data_source/todo_data_source.dart';
import 'package:modu_3_dart_study/model/todo.dart';

class TodoDataSourceImpl implements TodoDataSource {
  @override
  Future<Todo> getTodo() async {
    final file = File('assets/todo.json');
    final jsonString = await file.readAsString();
    final json = jsonDecode(jsonString);
    return Todo.fromJson(json);
  }
}
