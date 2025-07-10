import 'package:modu_3_dart_study/core/response.dart';
import 'package:modu_3_dart_study/data_source/user/user2_data_source.dart';
import 'package:modu_3_dart_study/dto/user/user2_dto.dart';

class MockUser2DataSourceImpl implements User2DataSource {
  final jsons = [
    {'id': 1, 'name': 'name1'},
    {'id': 2, 'name': 'name2'},
    {'id': 3, 'name': 'name3'},
  ];
  final int statusCode;
  final Exception? exception;

  MockUser2DataSourceImpl({required this.statusCode, this.exception});

  @override
  Future<Response<User2Dto>> createUser(User2Dto user) async {
    if (exception != null) {
      throw exception!;
    }

    return Response(statusCode: statusCode, headers: {}, body: user);
  }

  @override
  Future<Response<List<User2Dto>>> getUsers() async {
    if (exception != null) {
      throw exception!;
    }

    return Response(
      statusCode: statusCode,
      headers: {},
      body: jsons.map(User2Dto.fromJson).toList(),
    );
  }
}
