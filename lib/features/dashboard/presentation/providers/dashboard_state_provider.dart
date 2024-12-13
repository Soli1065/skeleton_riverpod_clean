import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/dashboard_providers.dart';
import 'state/dashboard_notifier.dart';
import 'state/dashboard_state.dart';

final dashboardNotifierProvider =
    StateNotifierProvider<DashboardNotifier, DashboardState>((ref) {
  final repository = ref.watch(dashboardRepositoryProvider);
  return DashboardNotifier(repository)..fetchProducts();
});
