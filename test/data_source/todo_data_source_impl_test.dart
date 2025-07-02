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
}
