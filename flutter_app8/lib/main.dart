import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=> new _MyAppState();
}

class _MyAppState extends State<MyApp>{
@override
  Widget build(BuildContext context) {
    return SplashScreen(
            seconds: 10,
          navigateAfterSeconds: new AfterSplash(),
          title: new Text('Welcome To SplashScreen', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
      image: new Image.network('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      backgroundColor: Colors.deepOrange,
      photoSize: 200.0,
      loaderColor: Colors.red,
        );


  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        SplashScreen(
          seconds: 10,
          navigateAfterSeconds: AfterSplash2(),
          title: new Text('Welcome To SplashScreen 2', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
            image: new Image.network('https://atgbcentral.com/data/out/125/5047059-landscape-picture.jpg'),
          backgroundColor: Colors.deepOrange,
          photoSize: 200.0,
            loaderColor: Colors.red,
    );
  }
}

class AfterSplash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
          seconds: 10,
        //navigateAfterSeconds:
          title: new Text('Welcome To SplashScreen 3', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
          image: new Image.network('https://www.pauldekortphotography.com/wp-content/uploads/2018/01/Fence-1600x-500x333.jpg'),
          backgroundColor: Colors.deepOrange,
          photoSize: 200.0,
        loaderColor: Colors.red,
      onClick: (){ null;}
    );
  }
}

