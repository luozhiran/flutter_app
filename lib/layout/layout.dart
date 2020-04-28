//弹性布局（Flex）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            new Expanded(
              child: new Container(
                height: 30.0,
                color: Colors.orange,
              ),
              flex: 1,
            ),
            new Expanded(
              child: new Container(
                color: Colors.lightGreen,
                height: 30,
              ),
              flex: 2,
            )
          ],
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 20),
          child: new SizedBox(
            height: 100,
            //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
            child: new Flex(
              direction: Axis.vertical,
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                new Spacer(
                  flex: 1,
                ),
                new Expanded(
                  flex: 1,
                  child: new Container(
                    height: 1,
                    color: Colors.lightGreen,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
