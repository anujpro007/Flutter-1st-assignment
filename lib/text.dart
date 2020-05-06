import 'package:flutter/material.dart';

class Texts extends StatelessWidget {

final List showTxt;
final int index;
Texts({@required this.showTxt, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child:  Text(showTxt[index],style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
      )
      
    );
  }
}