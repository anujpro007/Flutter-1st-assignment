import 'package:flutter/material.dart';

import './TextControl.dart';
import './text.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index=0;

final _showTxt = const[
  "Hello 👋",
  "स्वागत हे",
  "ಸ್ವಾಗತ",
  "સ્વાગત છે",
  "வரவேற்பு",
  "స్వాగత",
  "স্বাগত"
];

void _changeTxt(){
  setState(() {
    _index += 1;
    
  });
}

void reSet(){
  setState(() {
    _index=0;
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Greetings in Indian Languages"),
        ),

        body:Center(
          child: _index < _showTxt.length ?  Column(
            children: <Widget>[
              SizedBox(height:205),
              Texts(showTxt: _showTxt, index: _index),
              Button(changeTxt: _changeTxt, txt: "Next",)
            ],
          ):Container(child: Button(changeTxt: reSet, txt: "Again",)),
        )
      ),
      
    );
  }
}