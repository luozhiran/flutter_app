import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomFour extends StatelessWidget {
  List<String> imgUrl;
  List<String> name;

  MyCustomFour(this.imgUrl, this.name);

  Widget _getImg(String url) {
    return new Image(
      image: new NetworkImage(url),
      fit: BoxFit.fitWidth,
    );
  }

  Widget _getText(String name) {
    return new Text(name);
  }

  Widget _getExpanded(String url, String name) {
    return new Expanded(
        flex: 1,
        child: new GestureDetector(
            onTap: () {
              print("单个");
            },
            child: new Column(
              children: <Widget>[
                _getImg(url),
                _getText(name),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Column(
      children: <Widget>[
        new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            _getExpanded(imgUrl[0], name[0]),
            _getExpanded(imgUrl[1], name[1]),
            _getExpanded(imgUrl[2], name[2]),
            _getExpanded(imgUrl[3], name[3]),
          ],
        ),
        new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            _getExpanded(imgUrl[4], name[4]),
            _getExpanded(imgUrl[5], name[5]),
            _getExpanded(imgUrl[6], name[6]),
            _getExpanded(imgUrl[7], name[7]),
          ],
        ),
      ],
    );
  }
}

//在CustomScrollView中使用，listview时横向滑动
// ignore: must_be_immutable
class NestedHorizontalList extends StatelessWidget {
  List<String> imgUrl;
  List<String> name;

  NestedHorizontalList(this.imgUrl, this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SliverToBoxAdapter(
      child: new Container(
        height: 100,
        child: new _MySliverList(imgUrl, name),
      ),
    );
  }
}

// ignore: must_be_immutable
class _MySliverList extends StatefulWidget {
  List<String> imgUrl;
  List<String> name;

  _MySliverList(this.imgUrl, this.name);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MySliverListState(imgUrl, name);
  }
}

class _MySliverListState extends State<_MySliverList> {
  List<String> imgUrl;
  List<String> name;

  _MySliverListState(this.imgUrl, this.name);

  Widget _getImg(String url) {
    return new Image(
      image: new NetworkImage(url),
      fit: BoxFit.contain,
    );
  }

  Widget _getText(String name) {
    return new Text(name);
  }

  Widget _getColumn(String url, String name) {
    return new Column(
      children: <Widget>[new Expanded(child: _getImg(url)), _getText(name)],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: imgUrl.length,
      scrollDirection: Axis.horizontal,
//      itemBuilder: (context, index) => _getColumn(imgUrl[index], name[index]),
      itemBuilder: (context, index) =>
      new GestureDetector(
        onTap: () {
          print("ddddddddddddddddddddddddddddddddddddddddd");
        },
        child: _getColumn(imgUrl[index], name[index]),
      ),
    );
  }
}
