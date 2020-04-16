

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

///无状态
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: '你好，fultter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是appbar上的title'),
        ),
        body: Center(
          child: Text('我是body中的 ${wordPair.asPascalCase}'),
        ),
      ),
    );
  }
}