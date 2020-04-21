
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){print('I am Gesture Detector');},
      child: new Container(
        height: 36,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: new BoxDecoration(borderRadius: new BorderRadius.circular(5),color: Colors.lightGreen[500],),
        child: new Center(
          child: new Text('I am MyBottom'),
        ),
      ),
    );
  }

}