
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/data/local/storage_service.dart';
import '../../../../shared/domain/providers/shared_preferences_storage_service_provider.dart';
import '../../data/datasource/user_local_datasource.dart';
import '../../data/repositories/user_repository_impl.dart';
import '../repositories/user_cache_repository.dart';

final userDatasourceProvider = Provider.family<UserDataSource, StorageService>(
  (_, networkService) => UserLocalDatasource(networkService),
);

final userLocalRepositoryProvider = Provider<UserRepository>((ref) {
  final storageService = ref.watch(storageServiceProvider);

  final datasource = ref.watch(userDatasourceProvider(storageService));

  final repository = UserRepositoryImpl(datasource);

  return repository;
});
