
import 'package:flutter/material.dart';

class LogOrReg extends StatelessWidget {
  final String text1,text2;
  const LogOrReg({this.text1,this.text2,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          text: TextSpan(
              text: text1,
              style: TextStyle(color: Colors.black),
              children: [
            TextSpan(
                text: text2,
                style: TextStyle(color: Colors.lightBlue))
          ])),
    );
  }
}
