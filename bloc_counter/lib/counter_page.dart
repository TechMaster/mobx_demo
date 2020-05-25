import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 30.0),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              counterBloc.add(CounterEvent.decrement);
            },
          ),
          SizedBox(width: 30),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counterBloc.add(CounterEvent.increment);
            },
          )
        ],
      ),
    );
  }
}
