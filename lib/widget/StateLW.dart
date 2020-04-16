
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

/// 有状态
class Temp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "我是",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("风格"),
          ),
          body: new _RandomWords(),
        )
    );
  }

}

class _RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RandomWordsState();
  }
}

class _RandomWordsState extends State<_RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text('${wordPair.asPascalCase}');
  }
}