
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height:10),
          Text('let\'s Create Your Profile',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration:
                    InputDecoration(labelText: ' Nick Name'),
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration:
                    InputDecoration(labelText: ' Phone Number'),
              ),
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
            ],
          )),
        ],
      ),
    );
  }
}
