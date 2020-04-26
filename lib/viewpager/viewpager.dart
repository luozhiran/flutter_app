import 'package:flutter/cupertino.dart';

class ViewPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ViewPagerState();
  }
}

class _ViewPagerState extends State<ViewPager> {
  List activityItem = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemBuilder: _pageItemBuilder,
      itemCount: activityItem.length,
    );
  }

  Widget _pageItemBuilder(BuildContext context, int index) {
    return new Center(
      child: new Text('我是 ---- $index'),
    );
  }
}
