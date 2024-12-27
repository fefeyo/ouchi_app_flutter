// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      id: (json['id'] as num?)?.toInt() ?? Isar.autoIncrement,
      name: json['name'] as String? ?? "",
      category:
          $enumDecodeNullable(_$InventoryCategoryEnumMap, json['category']) ??
              InventoryCategory.food,
      isNeed: json['isNeed'] as bool? ?? false,
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$InventoryCategoryEnumMap[instance.category]!,
      'isNeed': instance.isNeed,
    };

const _$InventoryCategoryEnumMap = {
  InventoryCategory.food: 'food',
  InventoryCategory.drink: 'drink',
  InventoryCategory.seasoning: 'seasoning',
  InventoryCategory.dailyItem: 'dailyItem',
  InventoryCategory.cleaning: 'cleaning',
  InventoryCategory.medical: 'medical',
};
