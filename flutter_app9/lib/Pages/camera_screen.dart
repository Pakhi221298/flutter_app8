import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
       child: new Text("THIS IS CAMERA SCRREN",style: new TextStyle(fontSize: 20) ),
      //child: Image.network('https://youkeepshooting.com/wp-content/uploads/2018/10/10a-1-500x333.jpg',text:"THIS IS CAMERA"),
    );
  }
}