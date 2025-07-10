import 'package:modu_3_dart_study/core/network_error.dart';
import 'package:modu_3_dart_study/core/result.dart';

abstract interface class NetworkValidator {
  Result<void, NetworkError> validateStatusCode(int code);
}
