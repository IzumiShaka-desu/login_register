import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
   LoginForm({
    Key key,
  }) : super(key: key);
final controller={
    'username':TextEditingController(),
    'password':TextEditingController()
  };
  
  get username =>controller['username'].text;
  get password =>controller['password'].text;
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
 
  
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
                            controller: widget.controller['username'],
                decoration:
                    InputDecoration(labelText: ' Username'),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: widget.controller['password'],
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
