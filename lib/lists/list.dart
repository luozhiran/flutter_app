import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleVerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = '简单listview';
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text('list item 1'),
        ),
        new ListTile(
          leading: new Icon(Icons.photo_album),
          title: new Text('list item 2'),
        ),
        new ListTile(
          leading: new Icon(Icons.photo),
          title: new Text('list item 3'),
        ),
        new ListTile(
          leading: new Icon(
            Icons.favorite_border,
            color: Colors.red[500],
          ),
          title: new Text('list item 4'),
        )
      ],
    );
  }
}

class WrapVerticalListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('list view'),
      ),
      body: new SimpleVerticalList(),
    );
  }
}

class SimpleHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 160,
          color: Colors.red,
        ),
        new Container(
          width: 160,
          color: Colors.green,
        ),
        new Container(
          width: 160,
          color: Colors.amber,
        ),
        new Container(
          width: 160,
          color: Colors.orange,
        )
      ],
    );
  }
}

class WrapHorizontalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('横向listview'),
      ),
      body: new Container(
        margin: new EdgeInsets.symmetric(vertical: 20),
        height: 200,
        child: new SimpleHorizontalList(),
      ),
    );
  }
}

class DynamicListWidget extends StatelessWidget {
  final List<String> items;

  DynamicListWidget({Key key, @required this.items});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('动态lsitview'),
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
