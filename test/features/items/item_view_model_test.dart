// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:app_value_notifier/src/features/items/view_model/item_view_model.dart';

void main() {
  group('ItemsViewModel', () {
    late ItemsViewModel viewModel;

    setUp(() {
      viewModel = ItemsViewModelImpl();
    });

    test('initial value is an empty list', () {
      expect(viewModel.value, []);
    });

    test('add item to list', () {
      viewModel.addItemToList();
      expect(viewModel.value, [1]);
    });

    test('remove item from list', () {
      viewModel.addItemToList();
      viewModel.removeItemFromList();
      expect(viewModel.value, []);
    });

    test('remove all items from list', () {
      viewModel.addItemToList();
      viewModel.addItemToList();
      viewModel.removeAllItems();
      expect(viewModel.value, []);
    });
  });
}
