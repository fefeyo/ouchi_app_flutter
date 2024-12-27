import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ouchi_app/features/home/view/home_screen.dart';
import 'package:ouchi_app/features/inventory_list/view/inventory_list_screen.dart';
import 'package:ouchi_app/features/recipe_list/view/recipe_list_screen.dart';
import 'package:ouchi_app/features/shopping_list/view/shopping_list_screen.dart';

enum AppRoute {
  inventory("inventory", "/inventory"),
  recipe("recipe", "/recipe"),
  shopping("shopping", "/shopping"),
  ;

  const AppRoute(this.name, this.path);

  final String name;
  final String path;
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: AppRoute.inventory.path, routes: [
    ShellRoute(
        builder: (context, state, child) => HomeScreen(child: child),
        routes: [
          GoRoute(
            path: AppRoute.inventory.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: InventoryListScreen()),
          ),
          GoRoute(
            path: AppRoute.recipe.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: RecipeListScreen()),
          ),
          GoRoute(
            path: AppRoute.shopping.path,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ShoppingListScreen()),
          ),
        ])
  ]);
});
