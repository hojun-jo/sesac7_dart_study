import 'package:modu_3_dart_study/data_source/todo_data_source_impl.dart';
import 'package:test/test.dart';

void main() {
  group(
    'getTodo',
    () {
      test(
        'If the json file is healthy, when you perform getTodo, all values will be equal to the values in the expectedJson.',
        () async {
          // given
          final expectedJson = {
            "userId": 1,
            "id": 1,
            "title": "delectus aut autem",
            "completed": false,
          };

          // when
          final todo = await TodoDataSourceImpl().getTodo();

          // then
          expect(todo.userId, expectedJson['userId']);
          expect(todo.id, expectedJson['id']);
          expect(todo.title, expectedJson['title']);
          expect(todo.completed, expectedJson['completed']);
        },
      );
    },
  );

  group(
    'getTodos',
    () {
      test(
        'If the json file is healthy, the first value of getTodos will be the same as the expectedJson value.',
        () async {
          // given
          final expectedJson = {
            "userId": 1,
            "id": 1,
            "title": "delectus aut autem",
            "completed": false,
          };

          // when
          final todos = await TodoDataSourceImpl().getTodos();
          final first = todos.first;

          // then
          expect(first.userId, expectedJson['userId']);
          expect(first.id, expectedJson['id']);
          expect(first.title, expectedJson['title']);
          expect(first.completed, expectedJson['completed']);
        },
      );
    },
  );
}
