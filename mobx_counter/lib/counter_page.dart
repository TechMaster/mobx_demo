import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter/counter.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Observer(builder: (_) => Text("Mobx Counter: ${counter.count}"))),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              "Counter",
              style: TextStyle(fontSize: 30),
            ),
            Observer(
                builder: (_) =>
                    Text("${counter.count}", style: TextStyle(fontSize: 30)))
          ])),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              onPressed: counter.decrement,
              tooltip: "Remove",
              child: Icon(Icons.remove)),
          SizedBox(width: 20),
          FloatingActionButton(
              onPressed: counter.increment,
              tooltip: "Add",
              child: Icon(Icons.add)),
        ],
      ),
    );
  }
}
