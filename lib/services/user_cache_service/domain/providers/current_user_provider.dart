import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/domain/models/models.dart';
import 'user_cache_provider.dart';

final currentUserProvider = FutureProvider<User?>((ref) async {
  final repository = ref.watch(userLocalRepositoryProvider);
  final eitherType = (await repository.fetchUser());

  return eitherType.fold((l) => null, (r) => r);
});
