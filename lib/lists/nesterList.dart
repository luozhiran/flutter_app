import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NestedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我是嵌套滑动'),
      ),
      body: new _NestedView(),
    );
  }
}

/**
 * https://www.jianshu.com/p/2d408678ff82 横向布局 教程
 * https://www.cnblogs.com/sundaysme/p/12701385.html
 * */
class _NestedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _gridLists = [
      'grid item 1',
      'grid item 2',
      'grid item 3',
      'grid item 4',
      'grid item 5'
    ];

    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('多个效果联动'),
          floating: false,
          //true 的时候下滑AppBar优先滑动展示，展示完成后才给滑动控件滑动
          snap: false,
          //snap 为 true, 则 floating 也要为 true 。true 的时候根据手指松开的位置展开或者收缩AppBar
          forceElevated: true,
          //结合 elevation 使用，当elevation 不为 0 的时候，是否显示阴影
          elevation: 10,
//          pinned: true,
          flexibleSpace: Image.network(
            "https://www.baidu.com/img/bd_logo1.png",
            fit: BoxFit.cover,
          ),
          expandedHeight: 170, //AppBar 展开时候的高度
        ),
        new SliverToBoxAdapter(
          child: new Container(
            height: 150,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return  new Container(
                    child: new Center(child: new Text('横向-- $index',style: new TextStyle(color: Colors.white),),),
                  width: 160,
                  color: Colors.red,
                );
              },
              itemCount: 20,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        new SliverGrid(
            delegate: new SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return new Container(
                  child: new Icon(
                    Icons.favorite,
                    color: Colors.red[500],
                  ),
                );
              },
              childCount: 20,
            ),
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 8, mainAxisSpacing: 9)),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => new ListTile(
              title: new Text('Item $index'),
            ),
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
