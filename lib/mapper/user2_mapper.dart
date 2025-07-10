import 'package:modu_3_dart_study/dto/user/user2_dto.dart';
import 'package:modu_3_dart_study/model/user/user2.dart';

extension User2DtoToModel on User2Dto {
  User2 toModel() {
    return User2(
      id: id ?? 0,
      name: name ?? '',
    );
  }
}

extension User2ModelToDto on User2 {
  User2Dto toDto() {
    return User2Dto(
      id: id,
      name: name,
    );
  }
}
