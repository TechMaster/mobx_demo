import 'package:flutter/material.dart';
import 'counter/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobx Counter")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Counter", style: TextStyle(fontSize: 30)),
              Observer(
                  builder: (_) =>
                      Text("${counter.count}", style: TextStyle(fontSize: 30)))
            ]),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: counter.decrement,
        ),
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: counter.increment,
        )
      ]),
    );
  }
}
