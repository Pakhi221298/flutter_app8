import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

void main(){
  runApp(new MaterialApp(
  home: new MyTab(),
  ));
}

class MyTab extends StatefulWidget{


  @override
  MyTabState createState()=> new MyTabState();
}

class MyTabState extends State<MyTab> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 3,vsync: this);
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(title:new Text("PAGES"),
      backgroundColor: Colors.red,
      bottom: new TabBar(
          controller: controller,
        tabs: <Tab>[
          new Tab(icon: new Icon(Icons.arrow_forward)),
          new Tab(icon: new Icon(Icons.arrow_downward)),
          new Tab(icon: new Icon(Icons.arrow_back)),
        ]
      ),
    ),
      bottomNavigationBar: new Material(
        color: Colors.lightGreenAccent,
          child: new TabBar(
              controller: controller,
              tabs: <Tab>[
                new Tab(icon: new Icon(Icons.arrow_forward)),
                new Tab(icon: new Icon(Icons.arrow_downward)),
                new Tab(icon: new Icon(Icons.arrow_back)),
              ]
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
          new third.Third(),
        ],
      )




    );
  }
}

