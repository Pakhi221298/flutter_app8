import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget{
  final String pageText;
  OtherPage(this.pageText);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(pageText,style:  TextStyle(fontSize: 30,fontFamily: 'Noto')),),
      body: new Center(
        child: new Text(pageText,style:  TextStyle(fontSize: 20,fontFamily: 'Noto')),
      ),
    );
  }
}