import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
    );
  }
}


class MyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        child: new Column(children: <Widget>[
          new MyAppBar(title: new Text('Exmaple title',style: Theme.of(context).primaryTextTheme.title,),),
          new Expanded(child: new Center(child: new Text('I am is Center'),))
        ]
        )
    );
  }

}
