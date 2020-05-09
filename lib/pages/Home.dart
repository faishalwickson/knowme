import 'package:flutter/material.dart';
import 'package:knowme/pages/Dashboard.dart';

import './Profile.dart';
import './Transaction.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
/*
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Text('Homescreen'),
    );
  }
} */

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  int _currentIndex = 0;

  final tabs = [
    dashboardPage(),
    transactionPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('KnowMe'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Riwayat');
            },
            icon: Icon(Icons.history, color: Colors.white,),
            label: Text(''),
            )
        ],
      ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[900],
          currentIndex: _currentIndex, // this will be set when a new tab is tapped
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.import_export),
              title: Text('Transactions'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.white,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,'/formtambahkartu');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[900],
      )
    );
  }
}






//Text(
//'Daftar Kartu',
//style: TextStyle(fontSize: 20.00),
//),