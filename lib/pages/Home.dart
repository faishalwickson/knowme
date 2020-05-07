import 'package:flutter/material.dart';

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
        body: Container(
          padding: EdgeInsets.fromLTRB(152.00, 10.00, 142.00, 10.00),
          child: Text(
            'Daftar Kartu',
            style: TextStyle(fontSize: 20.00),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          currentIndex: 0, // this will be set when a new tab is tapped
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






