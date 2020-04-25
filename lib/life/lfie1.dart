

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Life1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('生命周期 第二页'),),
      body: new _Home(),
    );
  }

}


class _Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}


class _HomeState extends State<_Home>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('第二页 生命周期 initState()');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('第二页 生命周期 didChangeDependencies()');

  }



  @override
  void didUpdateWidget(_Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('第二页 生命周期 didUpdateWidget()');
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('第二页 生命周期 build()');
    return new Center(child: new Text('我是第二页'),);
  }


  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('第二页 生命周期 deactivate()');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('第二页 生命周期 dispose()');
  }

}