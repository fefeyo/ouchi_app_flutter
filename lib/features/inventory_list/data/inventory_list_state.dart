import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ouchi_app/features/inventory_list/data/inventory.dart';

part 'inventory_list_state.freezed.dart';
part 'inventory_list_state.g.dart';

@freezed
class InventoryListState with _$InventoryListState {
  const factory InventoryListState({
    @Default([]) List<Inventory> inventoryList,
    @Default([]) List<Inventory> selectedNeededList,
  }) = _InventoryListState;



  factory InventoryListState.fromJson(Map<String, dynamic> json) =>
      _$InventoryListStateFromJson(json);
}
