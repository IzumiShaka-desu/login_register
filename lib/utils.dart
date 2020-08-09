import 'package:flutter/material.dart';

SnackBar buildSnackBar(String message,Color color,IconData icon) => SnackBar(
        content: Container(
      child: Center(
        child: Row(
          children: [
            Icon(icon,color: color),
            SizedBox(width:10),
            Text(message,style: TextStyle(color: color),)
          ],
        ),
      ),
    ));

loginAction(BuildContext context, GlobalKey<ScaffoldState> key, String username,
    String password) {
  if (username.trim() == "admin" && password == "admin") {
    key.currentState.showSnackBar(buildSnackBar('login Succesfull',Colors.greenAccent[700],Icons.check));
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DashBoard({username:username,password:password})));
  }else{
    key.currentState.showSnackBar(buildSnackBar('username or password wrong ,please try again',Colors.orange[700],Icons.warning));
  }

}

signUpAction() {}
