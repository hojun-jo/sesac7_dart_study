import 'package:modu_3_dart_study/model/todo.dart';

abstract interface class TodoDataSource {
  Future<Todo> getTodo();
  Future<List<Todo>> getTodos();
}
