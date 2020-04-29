import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/use/goots_bottom_page.dart';

var imgUrl = [
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png",
  "https://www.baidu.com/img/bd_logo1.png"
];
var name = ["a", "b", "c", "d", "e", "f", "g", "h"];

class Com extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('row，colum'),
      ),
      body: new CustomScrollView(
        controller: null,
        slivers: <Widget>[
          new SliverToBoxAdapter(
            child: new MyCustomFour(imgUrl, name),
          ),
          new NestedHorizontalList(imgUrl, name),
        ],
      ),
    );
  }
}
