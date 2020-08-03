import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
          SizedBox(height:10),
          Text('welcome back, Login to continue',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration:
                    InputDecoration(labelText: ' Email'),
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration:
                    InputDecoration(labelText: ' Password'),
              ),
              SizedBox(height:20),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.w500,color:Colors.greenAccent),))
            ],
          )),
        ],
      ),
    );
  }
}
