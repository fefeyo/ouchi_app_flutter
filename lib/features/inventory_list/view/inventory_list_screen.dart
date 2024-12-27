import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ouchi_app/features/inventory_list/data/inventory.dart';
import 'package:ouchi_app/features/inventory_list/view_model/inventory_list_viewmodel.dart';

import '../../../core/data/inventory_category.dart';

class InventoryListScreen extends ConsumerWidget {
  const InventoryListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(inventoryListViewModelProvider);
    final viewmodel = ref.read(inventoryListViewModelProvider.notifier);
    final categorizedMap = <InventoryCategory, List<Inventory>>{};

    for (final inventory in state.inventoryList) {
      if (categorizedMap.containsKey(inventory.category)) {
        categorizedMap[inventory.category]!.add(inventory);
      } else {
        categorizedMap[inventory.category] = [inventory];
      }
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      viewmodel.initState();
    });

    return RefreshIndicator(child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: categorizedMap.length,
          itemBuilder: (context, index) {
            final category = categorizedMap.keys.elementAt(index);
            final items = categorizedMap[category] ?? [];

            return Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(category.name),
                ),
                const Divider(
                  color: Colors.black,
                ),
                for (final inventory in items)
                  ListTile(
                    title: Text(inventory.name),
                  )
              ],
            );
          }),
    ), onRefresh: () => sample());
  }

  Future<void> sample() async => Future.error("");
}
