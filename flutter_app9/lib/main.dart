import 'package:flutter/material.dart';
import 'package:flutter_app9/WhatsApp_Home.dart';

void main(){runApp(new MyApp());}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: Colors.lightBlue,
        accentColor: Colors.blueAccent[600],
      ),
      debugShowCheckedModeBanner: true,
      home: WhatsAppHome(),
    );
  }
}