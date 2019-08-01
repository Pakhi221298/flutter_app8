import 'package:flutter/material.dart';
import 'package:flutter_app9/Pages/camera_screen.dart';
import 'package:flutter_app9/Pages/chat_screen.dart';
import 'package:flutter_app9/Pages/call_screen.dart';
import 'package:flutter_app9/Pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget{
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController tabController;
  void initState(){
    super.initState();
    tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: new AppBar(
      title: new Text("Chats"),
     elevation: 0.7,
    bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          new Tab(icon: Icon(Icons.camera_alt)),
         new Tab(icon:Icon(Icons.message)),
          new Tab(icon:Icon(Icons.account_circle)),
          new Tab(icon:Icon(Icons.call)),
        ],
      ),
      actions: <Widget>[ new Icon(Icons.search,color:Colors.black),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0)),
        new Icon(Icons.more_vert,color:Colors.black) ],
    ),
      body: new TabBarView(
        controller: tabController,
          children: <Widget>[
          new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ]
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,),
        onPressed: ()=>print("open chats"),
      ),
    );
  }
}