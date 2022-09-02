import 'package:app_value_notifier/src/features/items/item_notifier.dart';
import 'package:flutter/material.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Items'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () => itemsNotifier.removeAllItems(),
          ),
        ],
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: itemsNotifier,
          builder: (context, value, widget) {
            return value.isEmpty
                ? const Center(child: Text('The list is empty.'))
                : ListView.separated(
                    itemCount: value.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8.0),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('$index'),
                        ),
                        title: Text('Item $index'),
                      );
                    },
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('addItemToList'),
        child: const Icon(Icons.add_outlined),
        onPressed: () => itemsNotifier.addItemToList(),
      ),
    );
  }
}
