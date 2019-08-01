import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Image.network('https://youkeepshooting.com/wp-content/uploads/2018/10/10a-1-500x333.jpg'),
      ),
    );
  }
}