import 'package:app_value_notifier/src/features/counter/view_models/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterViewModel>().value;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Counter'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('increment'),
            child: const Icon(Icons.add_outlined),
            onPressed: () {
              context.read<CounterViewModel>().increment();
            },
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('decrement'),
            child: const Icon(Icons.remove_outlined),
            onPressed: () {
              context.read<CounterViewModel>().decrement();
            },
          ),
        ],
      ),
    );
  }
}
