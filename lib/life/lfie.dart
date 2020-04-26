import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 学习flutter State的生命周期
 */
class Life extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('生命周期'),),
      body: new _Home(),
    );
  }

}


class _Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeState();
  }

}


class _HomeState extends State<_Home> with WidgetsBindingObserver{

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print('-----  didChangeAppLifecycleState $state');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_){
      print("单次Frame绘制回调");//只回调一次
    });

    WidgetsBinding.instance.addPersistentFrameCallback((_){
      print("实时Frame绘制回调");//每帧都回调
    });
    print('第一页 生命周期 initState()');
  }



  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('第一页 生命周期 didChangeDependencies()');
  }




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('第一页 生命周期 build()');
    return new Center(child:new GestureDetector(child: new Text('我是第一页'),onTap: ()=>Navigator.pushNamed(context, "/life1"),));

  }


  @override
  void didUpdateWidget(_Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('第一页 生命周期 didUpdateWidget()');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('第一页 生命周期 deactivate()');
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('第一页 生命周期 dispose()');
    WidgetsBinding.instance.removeObserver(this);
  }


}


