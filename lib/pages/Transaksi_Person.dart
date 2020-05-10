import 'package:flutter/material.dart';
import 'package:knowme/tabbartransaksi//hal_meminta.dart' as meminta;
import 'package:knowme/tabbartransaksi//hal_mengirim.dart' as mengirim;
import 'package:knowme/services/person.dart';

class TransaksiPerson extends StatefulWidget {
  @override
  _TransaksiPersonState createState() => _TransaksiPersonState();
}

class _TransaksiPersonState extends State<TransaksiPerson> with SingleTickerProviderStateMixin{
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
          backgroundColor: Colors.grey[900],
          title: new Text('Transaksi'),
          centerTitle: true,
          elevation: 0,
          bottom: new TabBar(
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            ),
            controller: controller,
            tabs: <Widget>[
              new Tab(text: "Meminta"),
              new Tab(text: "Mengirim"),
            ],
          ),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new meminta.Meminta(),
            new mengirim.Mengirim()
          ],
        ),
        // body: Text('Riwayat Screen'),
      ),
    );
  }
}





