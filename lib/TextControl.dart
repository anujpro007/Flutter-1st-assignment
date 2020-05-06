import 'package:flutter/material.dart';

class Button extends StatelessWidget {


final Function changeTxt;
final String txt;


Button({@required this.changeTxt, @required this.txt});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  RaisedButton(
            child: Text(
              txt, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),
              ),
               color: Colors.blue,
              onPressed: changeTxt
              ),
      
    );
  }
}