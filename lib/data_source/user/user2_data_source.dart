import 'package:modu_3_dart_study/core/response.dart';
import 'package:modu_3_dart_study/dto/user/user2_dto.dart';

abstract interface class User2DataSource {
  Future<Response<User2Dto>> getUsers();
  Future<Response<User2Dto>> createUser(User2Dto user);
}
