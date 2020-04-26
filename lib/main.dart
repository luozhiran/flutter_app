import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/life/lfie.dart';
import 'package:flutterapp/life/lfie1.dart';
import 'package:flutterapp/page/page.dart';
import 'package:flutterapp/page/route.dart';
import 'package:flutterapp/stulwidget/counter.dart';
import 'package:flutterapp/tab/simpleTabbar.dart';
import 'package:flutterapp/viewpager/diffViewPager.dart';
import 'package:flutterapp/viewpager/viewpager.dart';
import 'package:flutterapp/widget/custom_appbar.dart';
import 'package:flutterapp/widget/gesture_detector.dart';
import 'package:flutterapp/widget/user_material.dart';

import 'lists/list.dart';
import 'lists/nesterList.dart';
import 'tab/diffcultTabbar.dart';

//void main() => runApp(new MaterialApp(
//  title: 'My App',
//  home: new MyScaffold(),
//));

//void main() => runApp(new MaterialApp(title: 'Material App',home: new TutorialHome(),));

//void main() => runApp(new MaterialApp(title: 'I am MyBottom', home: new MyBottom(),));

//void main() => runApp(new MaterialApp(title: 'I am Counter', home: new Counter(),));

//void main() => runApp(new MaterialApp(title: '跳转页面',home: new FirstScreen(),));

//void main() => runApp(new MaterialApp(
//      title: '使用路由表跳转',
//      initialRoute: "/",
//      routes: {
//        "/":(context) => RoutFirstScreen(),
//        "/second":(context)=>RoutSecondScreen(),
//      },
//    ));

//void main()=>runApp(new MaterialApp(
//  title: 'list view MaterialApp',
//  home: new WrapVerticalListWidget(),
//));

//void main()=>runApp(new MaterialApp(
//  title: 'list view MaterialApp',
//  home: new WrapHorizontalWidget(),
//));

//void main()=>runApp(new MaterialApp(
//  title: 'list view MaterialApp',
//  home: new DynamicListWidget(items: new List<String>.generate(1000, (i)=>"item $i"),),
//));

//void main() => runApp(new MaterialApp(
//  title: 'abc',
//   initialRoute: '/',
//  routes: <String,WidgetBuilder>{
//    '/':(BuildContext buildcontext)=>new Life(),
//    '/life1':(BuildContext contx)=>new Life1(),
//  },
//));

//void main() => runApp(new MaterialApp(
//  title: 'aa',
//  home:new NestedList(),
//));

//void main() => runApp(new MaterialApp(
//      title: "111",
//      home: new DefaultTabController(length: 6, child: new SimpleTabbarView()),
//    ));
//void main() => runApp(new MaterialApp(
//  title: "111",
//  home: new BarApp(),
//));

//void main() => runApp(new MaterialApp(
//      title: 'aa',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("我是viewpager"),
//        ),
//        body: new ViewPager(),
//      ),
//    ));

void main(){
  return runApp(new MaterialApp(
    title: 'aaa',
    home: new DiffViewPager(),
  ));
}
