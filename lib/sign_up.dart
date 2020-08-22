import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: signUp(),
    ));

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[50],
        body: Form(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sign up and benefit our services',
                  style: TextStyle(fontSize: 36),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'last Name',
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: Icon(Icons.info),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: FlatButton(
                      color: Colors.deepPurple,
                      onPressed: () =>
                          Navigator.pushNamed(context, '/',),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
