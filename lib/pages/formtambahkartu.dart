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
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Contoh: KTP, KTM, dll",
                labelText: "Nama Kartu",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              decoration: InputDecoration(
                  hintText: "Masa berlaku",
                  labelText: "Masukkan tahun masa berlaku berakhir",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            )
          ],
        )
    )
    );
  }
}
