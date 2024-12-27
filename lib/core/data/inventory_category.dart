import '../app_constants.dart';

enum InventoryCategory {
  food,
  drink,
  seasoning,
  dailyItem,
  cleaning,
  medical,
  ;

  const InventoryCategory();

  factory InventoryCategory.fromString(String value) => switch (value) {
    AppConstants.food => InventoryCategory.food,
    AppConstants.drink => InventoryCategory.drink,
    AppConstants.seasoning => InventoryCategory.seasoning,
    AppConstants.dailyItem => InventoryCategory.dailyItem,
    AppConstants.cleaning => InventoryCategory.cleaning,
    AppConstants.medical => InventoryCategory.medical,
    _ => InventoryCategory.food,
  };

  String get name => switch (this) {
    InventoryCategory.food => AppConstants.food,
    InventoryCategory.drink => AppConstants.drink,
    InventoryCategory.seasoning => AppConstants.seasoning,
    InventoryCategory.dailyItem => AppConstants.dailyItem,
    InventoryCategory.cleaning => AppConstants.cleaning,
    InventoryCategory.medical => AppConstants.medical,
  };
}
