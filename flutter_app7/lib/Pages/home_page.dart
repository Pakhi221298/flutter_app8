import 'package:flutter/material.dart';
import './other_page.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String mainProfilePicture ="https://pbs.twimg.com/profile_images/1017785713771700224/QrrQwBaw.jpg";
  String otherProfilePicture ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_y237PUL8X3wI6jw4nq9elJAoowlSaDd0cWfsllB2Rv813MuN";

  void switchUser(){
    String backupSting = mainProfilePicture;
    this.setState((){
      mainProfilePicture = otherProfilePicture;
      otherProfilePicture = backupSting;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("My Drawer App", style: TextStyle(fontSize: 30,fontFamily: 'Noto')),
        backgroundColor: Colors.pinkAccent,),
      drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text("Ranbir Kapoor"),
                  accountEmail: new Text("muskanjindal2790@gmail.com"),
                  currentAccountPicture: GestureDetector(
                    onTap: ()=> print("This is current user"),
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(mainProfilePicture),
                    ),
                  ),
                  otherAccountsPictures: <Widget>[//
                  new GestureDetector(
                    onTap: (){ switchUser();},//l
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(otherProfilePicture),
                    ),
                  )
                  ],
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        fit : BoxFit.fill,
                        image: new NetworkImage("https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))
                  ),
                ),
                new ListTile(
                  title: new Text("FIRST PAGE"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: (){
                    Navigator .of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext context)=> new OtherPage("FIRST PAGE")));
                  }
                ),
                ListTile(
                  title: new Text("SECOND PAGE"),
                  trailing: new Icon(Icons.arrow_right),
                    onTap: (){
                      Navigator .of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:(BuildContext context)=> new OtherPage("SECOND PAGE")));
                    }
                ),
                new Divider(),
                ListTile(
                  title: new Text("CLOSE"),
                  trailing: new Icon(Icons.cancel),
                  onTap:()=> Navigator.of(context).pop(),
                )
              ],
            ),
      ),
      body: new Center(
        child: new Text("Home Page",style: new TextStyle(fontSize: 35,fontFamily: 'Noto'),),
      ),
    );
  }
}