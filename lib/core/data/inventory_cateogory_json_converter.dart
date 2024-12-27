import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ouchi_app/core/data/inventory_category.dart';

class InventoryCategoryJsonConverter implements JsonConverter<InventoryCategory, String> {
  const InventoryCategoryJsonConverter();

  @override
  InventoryCategory fromJson(String json) => InventoryCategory.fromString(json);

  @override
  String toJson(InventoryCategory object) => object.name;

}
