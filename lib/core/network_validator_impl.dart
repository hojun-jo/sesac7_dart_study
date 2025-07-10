import 'package:modu_3_dart_study/core/network_error.dart';
import 'package:modu_3_dart_study/core/network_validator.dart';
import 'package:modu_3_dart_study/core/result.dart';

class NetworkValidatorImpl implements NetworkValidator {
  @override
  Result<void, NetworkError> validateStatusCode(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Result.success(null);
      case 401:
        return Result.error(NetworkError.unauthorized);
      case 404:
        return Result.error(NetworkError.notFound);
      case >= 500 && < 600:
        return Result.error(NetworkError.serverError);
      default:
        return Result.error(NetworkError.unknown);
    }
  }
}
