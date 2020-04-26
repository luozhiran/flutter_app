import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// tabBar和TabBarView是一一对应的
class SimpleTabbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TabBarDemo'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: "热门"),
            Tab(text: "推荐"),
            Tab(text: "关注"),
            Tab(text: "收藏"),
            Tab(text: "新增"),
            Tab(text: "点赞"),
          ],
        ),
      ),
      body: new TabBarView(children: <Widget>[
        Center(child: Text("这是热门的内容")),
        Center(child: Text("这是推荐的内容")),
        Center(child: Text("这是关注的内容")),
        Center(child: Text("这是收藏的内容")),
        Center(child: Text("这是新增的内容")),
        Center(child: Text("这是点赞的内容"))
      ]),
    );
  }
}
