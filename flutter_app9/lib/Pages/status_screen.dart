import 'package:flutter/material.dart';
import '../models/status_model.dart';

class StatusScreen extends StatefulWidget{
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context,i)=>new Column(
              children: <Widget>[
                Divider(height: 20.0),
                ListTile(
                  trailing: new Icon(Icons.check_circle,color: Colors.lightGreenAccent),
                  leading: CircleAvatar(foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusData[i].statusPic),
                    radius: 25.0,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(statusData[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          );


  }
}