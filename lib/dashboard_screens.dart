import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  DashBoard({this.username, this.password});
  final String username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.supervised_user_circle),
                    ),
                    SizedBox(width: 10),
                    Text('Selamat datang $username')
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () => Navigator.of(context).canPop())
            ],
          ),
          Center(
            child: Card(
              margin: EdgeInsets.all(20),
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('Username : $username'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('password : $password')
                    ],
                  )),
            ),
          )
        ],
      )),
    ));
  }
}
