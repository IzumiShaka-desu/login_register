import 'package:flutter/material.dart';
import 'package:login_register/components/loginform.dart';
import 'package:login_register/utils.dart';

import 'components/logorreg.dart';
import 'components/signupform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LoginForm loginForm = LoginForm();
  bool isLoginPage = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: height / 7,
                child: Stack(children: [
                  Positioned(
                      top: -8,
                      left: -8,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent, shape: BoxShape.circle),
                      )),
                  Positioned(
                      top: 55,
                      left: 40,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      )),
                  Positioned(
                      top: 60,
                      left: 90,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.pink, shape: BoxShape.circle),
                      )),
                  Positioned(
                      top: 20,
                      left: 100,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                      ))
                ]),
              ),
              Center(
                  child: Container(
                height: height * 4 / 7,
                width: width - 10,
                child: Column(
                  children: [
                    (isLoginPage) ? loginForm : SignupForm(),
                    SizedBox(height: 20),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoginPage = !isLoginPage;
                          });
                        },
                        child: LogOrReg(
                          text1: (isLoginPage)
                              ? ' I dont\' have an , '
                              : ' I already have an account, ',
                          text2: (isLoginPage)
                              ? 'Click here for Register!'
                              : 'Click here for Login!',
                        ))
                  ],
                ),
              )),
              SizedBox(
                width: double.infinity,
                height: height / 7,
                child: Stack(children: [
                  Positioned(
                      bottom: 10,
                      right: -5,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber, shape: BoxShape.circle),
                      )),
                  Positioned(
                      bottom: 2,
                      right: 50,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                      )),
                  Positioned(
                      bottom: 20,
                      right: 90,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            shape: BoxShape.circle),
                      )),
                ]),
              ),
              Container(
                height: height / 9,
                child: Container(
                  height: height / 10,
                  child: FlatButton(
                      color: Colors.greenAccent,
                      onPressed: () {
                        (isLoginPage)
                            ? loginAction(
                                context, loginForm.username, loginForm.password)
                            : signUpAction();
                      },
                      child: Center(
                          child: Text(
                              (isLoginPage) ? 'Login Now' : 'Sign up now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
