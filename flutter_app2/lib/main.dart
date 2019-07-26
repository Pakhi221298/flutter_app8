import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Mystastelesswidged(),
  ));
}

class Mystastelesswidged extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
        appBar: new AppBar(
            backgroundColor: Colors.blue,
        title: new Text("Stateless wiget")),
        body: new Container(
          padding: new EdgeInsets.all(20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                tittle: new Text("I love choclate", style: new TextStyle(fontSize: 20.0)),
                icon: new Icon(Icons.favorite, size: 40, color: Colors.red,),
              ),
              new MyCard(
                tittle: new Text("I love donuts", style: new TextStyle(fontSize: 20.0),),
                icon: new Icon(Icons.fastfood, size: 40, color: Colors.brown,),
              ),
              new MyCard(
                tittle: new Text("I love shopping", style: new TextStyle(fontSize: 20.0),),
                icon: new Icon(Icons.add_shopping_cart, size: 40, color: Colors.pinkAccent,),
              ),
            ],
          ),
        ),
    );

  }
}

class MyCard extends StatelessWidget{
  final Widget tittle;
  final Widget icon;
  MyCard({this.tittle , this.icon});

  @override
  Widget build(BuildContext context) {
  return new Container(
    padding: new EdgeInsets.all(20.0),
    child: new Card(
      child: new Container(
        padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.tittle,
              this.icon,
            ],)
      )

     
     )
    );

  }


}

