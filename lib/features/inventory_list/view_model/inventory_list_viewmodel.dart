import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:googleapis/sheets/v4.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:ouchi_app/features/inventory_list/data/inventory.dart';
import 'package:ouchi_app/features/inventory_list/data/inventory_list_state.dart';

final inventoryListViewModelProvider = StateNotifierProvider.autoDispose<
    InventoryListViewModel,
    InventoryListState>((ref) => InventoryListViewModel());

class InventoryListViewModel extends StateNotifier<InventoryListState> {
  InventoryListViewModel() : super(const InventoryListState());

  static const spreadSheetId = "1oedD5siP1IK81BjRZfs3LtyOHp_VQ8BTWc23Hx2Q0Ns";
  static const scopes = [SheetsApi.spreadsheetsScope];

  void initState() async {
    final json = await rootBundle.loadString('json/credential.json');
    final credentials = ServiceAccountCredentials.fromJson(json);
    final client = await clientViaServiceAccount(credentials, scopes);
    final sheetsApi = SheetsApi(client);
    final response = await sheetsApi.spreadsheets.values.get(spreadSheetId, "生活アイテム!A:D");
    final values = response.values ?? [];
    List<Inventory> inventoryList = [];
    for (var value in values.skip(1)) {
      final inventory = Inventory.fromResponse(value);
      inventoryList.add(inventory);
    }
    state = state.copyWith(
      inventoryList: inventoryList,
    );
  }

  void setValue() async {
//     // 書き込むデータのリストを作成
//     var values = [
//       ["データ1", "データ2", "データ3"]
//     ];
//
// // リクエスト作成
//     var valueRange = ValueRange(
//       range: 'シート名!A1',
//       values: values,
//     );
//
// // データの書き込み
//     await sheetsApi.spreadsheets.values.update(
//       valueRange,
//       _spreadsheetId,
//       'シート名!A1',
//       valueInputOption: 'RAW',
//     );
  }

}
