import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Container(
      child: Center(
          child: new Icon(Icons.favorite, size : 150, color: Colors.redAccent)
      ),
    );
  }
}