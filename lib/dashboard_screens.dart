import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  DashBoard({this.username, this.password});
  final String username, password;
  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: EdgeInsets.only(left:10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: height / 7,
                child:Stack(children: [
                Positioned(
                    top: -8,
                    right: -8,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent, shape: BoxShape.circle),
                    )),
                Positioned(
                    top: 55,
                    right: 40,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    )),
                Positioned(
                    top: 60,
                    right: 90,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.pink, shape: BoxShape.circle),
                    )),
                Positioned(
                    top: 20,
                    right: 100,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                    )),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          onPressed: () => Navigator.of(context).pop())
                    ],
                  ),
                ),
              ])),
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
