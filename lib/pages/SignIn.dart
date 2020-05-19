import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signInPage extends StatefulWidget {
  @override
  signInState createState() => signInState();
}

class signInState extends State<signInPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('ini page sign in'),
    );
  }
}