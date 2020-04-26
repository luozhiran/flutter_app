import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiffViewPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _DiffViewPager();
  }
}

class _DiffViewPager extends State<DiffViewPager> {
  PageController pageController;
  var _currentItemIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = new PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我是AppBar'),
        centerTitle: true,
      ),
      body: new PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return index == 1 ? new Text('我是第一页') : new Text('我是第二页');
        },
        itemCount: 2,
        onPageChanged: (index) {
          setState(() {
            if (_currentItemIndex != index) {
              _currentItemIndex = index;
            }
          });
        },
        controller: pageController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.category), title: new Text("首页")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text("我的")),
        ],
        currentIndex: _currentItemIndex,
        onTap: (index) {
          pageController.animateToPage(index,
              duration: new Duration(microseconds: 300), curve: Curves.ease);
        },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
}
