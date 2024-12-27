import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ouchi_app/features/home/data/home_state.dart';

import '../../../core/app_constants.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeState>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(const HomeState(title: AppConstants.inventoryTitle));

  void updateTitle(String title) => state = state.copyWith(title: title);
}
