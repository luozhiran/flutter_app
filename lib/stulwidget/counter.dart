import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increament'),
        ),
        new Text('Count:$_counter')
      ],
    );
  }
}


class CounterDisplay extends StatelessWidget{
  final int count;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('Count: $count');
  }

  CounterDisplay({this.count});
}
