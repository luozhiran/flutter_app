import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//学习装饰
class MySimpleDecoratButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MySimpleBoxState();
  }
}

class _MySimpleBoxState extends State<MySimpleDecoratButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DecoratedBox(
      decoration: new BoxDecoration(
        color: Colors.red[500],
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: [
          new BoxShadow(
            color: Colors.black54,
            offset: new Offset(2.0, 2.0),//阴影
            blurRadius: 4.0,
          ),
        ],
        gradient: new LinearGradient(colors: [Colors.red, Colors.orange[700]]),
      ),
      child: new Padding(
        key: new Key('1234'),
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
        child: new Text("控件的装饰"),

      ),
    );
  }
}
