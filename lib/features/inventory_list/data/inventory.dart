import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:ouchi_app/core/app_constants.dart';
import 'package:ouchi_app/core/utils/string_util.dart';

import '../../../core/data/inventory_category.dart';
import '../../../core/data/inventory_cateogory_json_converter.dart';

part 'inventory.freezed.dart';

part 'inventory.g.dart';

@freezed
@collection
class Inventory with _$Inventory {
  const factory Inventory({
    @Default(Isar.autoIncrement) Id id,
    @Default("") String name,
    @Default(InventoryCategory.food) 
    @Enumerated(EnumType.ordinal) InventoryCategory category,
    @Default(false) bool isNeed,
  }) = _Inventory;

  factory Inventory.fromResponse(List<dynamic> values) => Inventory(
        id: int.parse(values[0]),
        name: values[1],
        category: InventoryCategory.fromString(values[2]),
        isNeed: values[3].toString().convertStringToBool(),
      );

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);
}
