import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class logInPage extends StatefulWidget {
  @override
  logInState createState() => logInState();
}

class logInState extends State<logInPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('ini page log in'),
    );
  }
}