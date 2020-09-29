import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MaterialApp(home: login()));

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //backgroundColor: Colors.white,
          backgroundColor: Colors.purple[50],
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(seatchBar
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                        ),
                        Text(
                          "Welcome to Guru's booking App!",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Please login to your account.',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                        ))),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email Address",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                        ))),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Forget password?',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
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
                                Navigator.pushNamed(context, '/homeUi'),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      FlatButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/signUp'),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
