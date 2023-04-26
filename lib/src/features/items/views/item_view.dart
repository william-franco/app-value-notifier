import 'package:app_value_notifier/src/features/items/view_model/item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = context.watch<ItemsViewModel>().value;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Items'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () {
              context.read<ItemsViewModel>().removeAllItems();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: items.isEmpty
            ? const Center(child: Text('The list is empty.'))
            : ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('$index'),
                    ),
                    title: Text('Item $index'),
                  );
                },
              ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('addItemToList'),
            child: const Icon(Icons.add_outlined),
            onPressed: () {
              context.read<ItemsViewModel>().addItemToList();
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('removeItemFromList'),
            child: const Icon(Icons.remove_outlined),
            onPressed: () {
              context.read<ItemsViewModel>().removeItemFromList();
            },
          ),
        ],
      ),
    );
  }
}
