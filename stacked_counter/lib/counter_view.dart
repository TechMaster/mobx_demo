import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'counter_view_model.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text("Stacked Counter")),
        body: Center(
          child: Text(
            '${model.count}',
            style: TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: model.decrement,
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increment,
          ),
        ]),
      ),
      viewModelBuilder: () => CounterViewModel(),
    );
  }
}
