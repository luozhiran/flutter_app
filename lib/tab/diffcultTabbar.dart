import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BarAppState();
  }
}

class _BarAppState extends State<BarApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("顶部Tab切换"),
        bottom: new TabBar(
          tabs: <Widget>[
            Tab(text: "热门"),
            Tab(text: "推荐"),
            Tab(text: "关注"),
            Tab(text: "收藏"),
            Tab(text: "新增"),
            Tab(text: "点赞"),
          ],
          controller: _tabController,
        ),
      ),
      body: new TabBarView(children: <Widget>[
        Center(child: Text("这是热门的内容")),
        Center(child: Text("这是推荐的内容")),
        Center(child: Text("这是关注的内容")),
        Center(child: Text("这是收藏的内容")),
        Center(child: Text("这是新增的内容")),
        Center(child: Text("这是点赞的内容"))
      ],controller: _tabController,),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
}
