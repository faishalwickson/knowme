import 'package:flutter/material.dart';

class TambahKartu extends StatefulWidget {
  @override
  _TambahKartuState createState() => _TambahKartuState();
}

class _TambahKartuState extends State<TambahKartu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kartu"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}
