import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initstate() {
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.black,
          title: new Text('Riwayat'),
          centerTitle: true,
          elevation: 0,
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.computer),),
              new Tab(icon: new Icon(Icons.radio),),
            ],
          ),
        ),
        body: Text('Riwayat Screen'),
      ),
    );
  }
}



