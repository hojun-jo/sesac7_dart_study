import 'dart:async';

import 'package:modu_3_dart_study/core/network_error.dart';
import 'package:modu_3_dart_study/core/network_validator.dart';
import 'package:modu_3_dart_study/core/network_validator_impl.dart';
import 'package:modu_3_dart_study/core/result.dart';
import 'package:modu_3_dart_study/data_source/user2/user2_data_source.dart';
import 'package:modu_3_dart_study/mapper/user2_mapper.dart';
import 'package:modu_3_dart_study/model/user2/user2.dart';
import 'package:modu_3_dart_study/repository/user2/user2_repository.dart';

class User2RepositoryImpl implements User2Repository {
  static const timeLimit = Duration(seconds: 10);

  final User2DataSource _dataSource;
  final NetworkValidator _networkValidator;

  User2RepositoryImpl({
    required User2DataSource dataSource,
    NetworkValidator? validator,
  }) : _dataSource = dataSource,
       _networkValidator = validator ?? NetworkValidatorImpl();

  @override
  Future<Result<User2, NetworkError>> createUser(User2 user) async {
    try {
      final response = await _dataSource
          .createUser(user.toDto())
          .timeout(timeLimit);
      final result = _networkValidator.validateStatusCode(response.statusCode);

      switch (result) {
        case Success<void, NetworkError>():
          return Result.success(user);
        case Error<void, NetworkError>():
          return Result.error(result.error);
      }
    } on TimeoutException {
      return Result.error(NetworkError.requestTimeout);
    } on FormatException {
      return Result.error(NetworkError.parseError);
    } catch (e) {
      return Result.error(NetworkError.unknown);
    }
  }

  @override
  Future<Result<User2, NetworkError>> getUser(int id) async {
    try {
      final response = await _dataSource.getUsers().timeout(timeLimit);
      final result = _networkValidator.validateStatusCode(response.statusCode);

      switch (result) {
        case Success<void, NetworkError>():
          return Result.success(
            response.body.map((e) => e.toModel()).firstWhere((e) => e.id == id),
          );
        case Error<void, NetworkError>():
          return Result.error(result.error);
      }
    } on TimeoutException {
      return Result.error(NetworkError.requestTimeout);
    } on FormatException {
      return Result.error(NetworkError.parseError);
    } catch (e) {
      return Result.error(NetworkError.unknown);
    }
  }

  @override
  Future<Result<List<User2>, NetworkError>> getUsers() async {
    try {
      final response = await _dataSource.getUsers().timeout(timeLimit);
      final result = _networkValidator.validateStatusCode(response.statusCode);

      switch (result) {
        case Success<void, NetworkError>():
          return Result.success(
            response.body.map((e) => e.toModel()).toList(),
          );
        case Error<void, NetworkError>():
          return Result.error(result.error);
      }
    } on TimeoutException {
      return Result.error(NetworkError.requestTimeout);
    } on FormatException {
      return Result.error(NetworkError.parseError);
    } catch (e) {
      return Result.error(NetworkError.unknown);
    }
  }
}
