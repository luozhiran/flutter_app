import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    return titleSection;
  }
}


class MyCustomWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: EdgeInsets.all(32),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: new Text('adfadfasdfdasf',
                  style: new TextStyle(fontWeight: FontWeight.bold),),
              ),
              new Text('Kandersteg, Switzerland')
            ],
          )),
          new Icon(Icons.star, color: Colors.red[500],),
          new Text('41')
        ],
      ),

    );
    return titleSection;
  }

}
