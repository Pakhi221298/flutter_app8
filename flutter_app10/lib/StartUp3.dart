import 'package:flutter/material.dart';

class StartUp3 extends StatefulWidget{
  @override
  StartUp3State createState() => StartUp3State();
}

class StartUp3State extends State<StartUp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:null ),
        title: new Text("StartUp 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset("asset/okay.jpg",height: 300.0,width: 300.0,)),
            )),
            Text("blah blah ",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      bottomNavigationBar: Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonTheme(
                  // minWidth: (MediaQuery.of(context).size.width)/2,
                  //height: (MediaQuery.of(context).size.height)/2,
                  minWidth: 88.0,
                  height: 50.0,
                  child: RaisedButton(
                      child: Text("Interested",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                      onPressed:null
                  ),
                ),
              ),
              Divider(indent: 90.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonTheme(
                  minWidth: 88.0,
                  height: 50.0,
                  child: RaisedButton(
                      child: Text("Not Interested",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                      onPressed:null
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}