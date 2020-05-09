import 'package:flutter/material.dart';
import 'package:knowme/services/information.dart';
import 'package:knowme/services/person.dart';
import 'package:provider/provider.dart';

class TambahKartu extends StatefulWidget {
  @override
  _TambahKartuState createState() => _TambahKartuState();
}

class _TambahKartuState extends State<TambahKartu> {

  void kirimdata(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Icon(Icons.send, size: 60.0),
            Text("Kartu akan ditambahkan"),
            RaisedButton(
              child: Text("Setuju"),
              onPressed: ()=>Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

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
        child: ListView(
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
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Masukkan Informasi dari Kartu",
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/masukaninfo');
                    },
                    icon: Icon(Icons.add_circle_outline, color: Colors.grey[900], size: 40.0),
                    label: Text(''),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Masukkan Scan atau Foto Kartu",
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/masukangambar');
                    },
                    icon: Icon(Icons.add_photo_alternate, color: Colors.grey[900], size: 40.0),
                    label: Text(''),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              child: RaisedButton(
                child: Text("Tambah Kartu"),
                color: Colors.green,
                onPressed: (){ kirimdata();},
              ),
            ),
          ],
        ),
    ),

    );
  }
}




