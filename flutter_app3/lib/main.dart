import 'package:flutter/material.dart';
bool b=false;
//int count=0;
 void main(){
  runApp(
    new MaterialApp(
      home: new MyButton(),
    )
  );
}

class MyButton extends StatefulWidget{
  @override
  MyButtonState  createState() => new MyButtonState();
}

class MyButtonState extends State<MyButton>{
  int counter=0;
 List<String> strings = ["I","am","Muskan"];
 String displayedString ="";
  //var counter=0;
 // var strings = ["I","am","Muskan"];
   void onPressed(){
     setState((){
      displayedString = strings[counter];
      counter = counter < 2 ? counter+1 : 0;
     });
   }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          leading:Icon(Icons.add_shopping_cart),
        title: new Text("Stateful StatefulWiget"),
          backgroundColor: Colors.redAccent),
        body: new Container(
          child: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(displayedString,style: new TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                new Padding(padding: EdgeInsets.all(5.0)),
                new RaisedButton(
                  child: new Text("Press",style:new TextStyle(color: Colors.lightBlueAccent, fontStyle: FontStyle.italic, fontSize: 20)),
                  color: Colors.red,
                  //splashColor: Colors.yellow,
                  onPressed: onPressed
                ),
              ],
            )
          ),
        ),
      );
  }

}
