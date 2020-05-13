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
  int _currentIndex = 0;

  final tabs = [
    dashboardPage(),
    transactionPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[900],
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              title: Text('Dasbor'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.import_export),
              title: Text('Transaksi'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil'),
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.white,
        ),
    );
  }
}






