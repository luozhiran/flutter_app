import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 正常跳转
 */
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("第一页"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) {
              return new SecondScreen();
            }));
          },
          child: new Text('进入下一页'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第二页'),
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
