import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider - Counter'),
      ),
      body: Center(
        child: Text('${context.watch<Counter>().count}',
            style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            /// Calls `context.read` instead of `context.watch` so that it does not rebuild
            /// when [Counter] changes.
            onPressed: () => context.read<Counter>().decrement(),
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            /// Calls `context.read` instead of `context.watch` so that it does not rebuild
            /// when [Counter] changes.
            onPressed: () => context.read<Counter>().increment(),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
