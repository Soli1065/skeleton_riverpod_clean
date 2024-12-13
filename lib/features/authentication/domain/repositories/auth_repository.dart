import '../../../../shared/domain/models/either.dart';
import '../../../../shared/domain/models/user/user_model.dart';
import '../../../../shared/exceptions/http_exception.dart';

abstract class AuthenticationRepository {
  Future<Either<AppException, User>> loginUser({required User user});
}
