import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget{
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=>new Column(
        children: <Widget>[
          Divider(height: 10.0),
          ListTile(
            leading: CircleAvatar(foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                Text(dummyData[i].time,style: TextStyle(color: Colors.green,fontSize: 15,)),
              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(dummyData[i].message,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 17)),
            ),
          )
        ],
      ),
    );
  }
}