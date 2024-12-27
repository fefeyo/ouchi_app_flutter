// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryListStateImpl _$$InventoryListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryListStateImpl(
      inventoryList: (json['inventoryList'] as List<dynamic>?)
              ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedNeededList: (json['selectedNeededList'] as List<dynamic>?)
              ?.map((e) => Inventory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InventoryListStateImplToJson(
        _$InventoryListStateImpl instance) =>
    <String, dynamic>{
      'inventoryList': instance.inventoryList,
      'selectedNeededList': instance.selectedNeededList,
    };
