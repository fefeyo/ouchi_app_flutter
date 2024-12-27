import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShoppingListScreen extends ConsumerWidget {
  const ShoppingListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return const Padding(
      padding: EdgeInsets.all(16.0),
      // child: ListView.builder(
      //     itemCount: state.inventoryList.length,
      //     itemBuilder: (context, index) {
      //       final category = categorizedMap.keys.elementAt(index);
      //       final items = categorizedMap[category] ?? [];
      //
      //       return Column(
      //         children: [
      //           Container(alignment: Alignment.centerLeft,child: Text(category.name),),
      //           Divider(color: Colors.black,),
      //           for(final inventory in items)
      //             ListTile(
      //               title: Text(inventory.name),
      //             )
      //         ],
      //       );
      //     }),
    );
  }
}
