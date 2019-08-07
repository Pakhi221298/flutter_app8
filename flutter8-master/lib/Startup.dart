import 'package:flutter/material.dart';
import 'home_page.dart';
import 'EnlargedCard.dart';
class StartUp extends StatefulWidget{
  StartUp(this.appbartitle, this.image, this.description );
  final String appbartitle;
  final Image image;
  final String description;

  @override
  StartUpState createState() => StartUpState();
}

class StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:()=> Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> HomePage()))
        ),//NAVIGATION OF BACK BUTTON
        title: new Text(widget.appbartitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.network(widget.image,height: 300.0,width: 300.0,)),
            )),
            Text(widget.description,style: TextStyle(fontWeight: FontWeight.bold),)
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