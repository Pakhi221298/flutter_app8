import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyTextInput()
  )
  );
}

class MyTextInput extends StatefulWidget{
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  String result="";
   //TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("INPUT TEXT"),backgroundColor: Colors.red,),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextFormField(
                decoration: InputDecoration(
                  hintText: "Type Here!",
                ),
                onFieldSubmitted: (String str) {
                  setState(() {
                    result = result + "/n" + str;
                    //controller : controller;
                  }
                  );
                  new Text(result);
                }
              )
            ]
          ),
        ),
      ),
    );
  }

}