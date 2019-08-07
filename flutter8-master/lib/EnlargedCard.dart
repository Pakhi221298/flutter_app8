import 'package:flutter/material.dart';
import 'StartUp.dart';
class EnlargedCard extends StatefulWidget{
 EnlargedCard( this.title, this.dp, this.description);
 final String title;
 final Image dp;
 final String description;
  @override
  EnlargedCardState createState() => EnlargedCardState();
}

class EnlargedCardState extends State<EnlargedCard> {
  @override
  Widget build(BuildContext context) {

    return Container(

        child: Card(
          child: GestureDetector(
            onTap:()=> Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> StartUp(widget.title, widget.dp, widget.description))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  widget.dp,
                  Text(widget.title)
                ],
              ),
            ),
          ),
        ),

    );
  }
}