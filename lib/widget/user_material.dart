import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu),tooltip: 'Navigation meun', onPressed: null),
        title: new Text('TutorialHome Example title'),
        actions: <Widget>[new IconButton(icon: new Icon(Icons.search),tooltip: 'Search', onPressed: null)],
      ),
      body: new Center(child: new Text('Hello word!'),),
      floatingActionButton: new FloatingActionButton(onPressed: null,tooltip: 'Add',child: new Icon(Icons.add),),
    );
  }

}