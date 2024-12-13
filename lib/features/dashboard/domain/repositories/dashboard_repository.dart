
import '../../../../shared/domain/models/either.dart';
import '../../../../shared/domain/models/paginated_response.dart';
import '../../../../shared/exceptions/http_exception.dart';

abstract class DashboardRepository {
  Future<Either<AppException, PaginatedResponse>> fetchProducts(
      {required int skip});
  Future<Either<AppException, PaginatedResponse>> searchProducts(
      {required int skip, required String query});
}
