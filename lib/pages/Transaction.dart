import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class transactionPage extends StatefulWidget {
  @override
  transactionState createState() => transactionState();
}

class transactionState extends State<transactionPage>{
  /*
  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'jakob-owens-bQ0TogIULCM-unsplash.jpg');
  }
  List<Person> daftar = [
    Person(nama:'Udin Sanchez', username: '@ujhez', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'fred-moon-vSI2KnI4Abc-unsplash.jpg'),
    Person(nama:'Siti Cemerlang', username: '@stglowing', foto: 'photo-1574297500578-afae55026ff3.webp'),
  ];
  String _daftar="Udin Sanchez";
*/
  String code="";
  String getcode="";
  String barcode = "";
  Future scanbarcode()async{
    getcode= await FlutterBarcodeScanner.scanBarcode("#009922", "BATAL", true);
    setState(() {
      code=getcode;
    });
  }
  List<String> agama=["Ujang Sanchez","Ujang Uyey","Siti Cemerlang"];
  String _agama="Ujang Sanchez";

void pilihAgama(String value){
  setState((){
    _agama=value;
  });
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Transksi'),
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
      body: Column(
        children: <Widget>[
          Text("Cari Username", style: TextStyle(fontSize: 25.0),),
          Text("Cari orang berdasarkan username mereka!", style: TextStyle(fontSize: 15.0, color: Colors.black45),),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          Row(
            children: <Widget>[
              Text("Masukkan Username    ", style: TextStyle(fontSize: 15.0, color: Colors.blue),),
              DropdownButton(
                onChanged: (String value){
                  pilihAgama(value);
                },
                value: _agama,
                items: agama.map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RaisedButton(
                  child: Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Transaksi_Person');
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text("Atau gunakan Scan QR", style: TextStyle(fontSize: 25.0),),
          ),
          Text("Kamu bisa melakukan scanning QR untuk bertransaksi data", style: TextStyle(fontSize: 15.0, color: Colors.black45),),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: RaisedButton(
          child: Icon(Icons.settings_overscan),
          onPressed: () {
            scanbarcode();
          },
        ),
      ),
          Text(code),
          RaisedButton(
            child: Text('Scan'),
            onPressed: () async {
              try {
                String barcode = await BarcodeScanner.scan();
                setState(() {
                  this.barcode = barcode;
                });
              } on PlatformException catch (error) {
                if (error.code == BarcodeScanner.CameraAccessDenied) {
                  setState(() {
                    this.barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
                  });
                } else {
                  setState(() {
                    this.barcode = 'Error: $error';
                  });
                }
              }
            },
          ),
          Text(
            'Result: $barcode',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}

