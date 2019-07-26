import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: HomePage(),
//    routes: <String,WidgetBuilder>{
//      "/SecondPage": (BuildContext context) => new SecondPage()
//    }
  ));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar( title:  new Text("HOME PAGE"),backgroundColor: Colors.deepOrangeAccent),
      body: new Container(
        color: Colors.black,
            child: new Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Image.network("https://media.giphy.com/media/jxcwbgEbnWs6EUucnJ/giphy.gif"),
                ),
                Text("HOME",style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
                RaisedButton(
                  color: Colors.pinkAccent,
                    child: Text("PRESS ME",style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold) ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                    },

                ),

              ],
          ),
          )
          );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar( title:  new Text("SECOND PAGE"),backgroundColor: Colors.lightGreenAccent),
        body: new Container(
          color: Colors.cyan,
          child: new Column(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Image.network("https://media.giphy.com/media/3ohfFzc0Vgbu4srmhy/giphy.gif"),
              ),
              Text("SECOND PAGE",style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Card(
                 child: new Column(
                   //AxisAligment: MainAxisAlignment
                   children: <Widget>[

                     new Icon(Icons.favorite, color: Colors.red, size: 300,),
                   ],
                 ),
                ),
              ),
            ],
          ),
        )
    );
  }

}