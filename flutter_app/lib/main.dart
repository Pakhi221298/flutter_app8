import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Stateless widged'),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Text('Hello WorldPP'),
        ),
      ),
    );
  }
}
  }
}
