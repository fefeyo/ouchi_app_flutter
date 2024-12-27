import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ouchi_app/core/app_constants.dart';
import 'package:ouchi_app/features/home/view_model/home_viewmodel.dart';

import '../../../routes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewmodel = ref.read(homeViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      drawer: SafeArea(
          bottom: false,
          child: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(12.0),
              children: [
                const Text(AppConstants.pageListTitle),
                ListTile(
                  leading: const Icon(Icons.shelves),
                  title: const Text(AppConstants.inventoryTitle),
                  onTap: () {
                    viewmodel.updateTitle(AppConstants.inventoryTitle);
                    context.go(AppRoute.inventory.path);
                    context.pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text(AppConstants.shoppingTitle),
                  onTap: () {
                    viewmodel.updateTitle(AppConstants.shoppingTitle);
                    context.go(AppRoute.shopping.path);
                    context.pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.menu_book),
                  title: const Text(AppConstants.recipeTitle),
                  onTap: () {
                    viewmodel.updateTitle(AppConstants.recipeTitle);
                    context.go(AppRoute.recipe.path);
                    context.pop();
                  },
                ),
              ],
            ),
          )),
      body: child,
    );
  }
}
