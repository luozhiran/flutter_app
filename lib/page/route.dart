import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("路由表第一页"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: new Text('进入下一页'),
        ),
      ),
    );
  }
}

class RoutSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('路由表第二页'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('第二页'),
        ),
      ),
    );
  }
}
