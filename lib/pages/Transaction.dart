import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/scheduler.dart';

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
  String result = "Heyho";
Future _scanQR() async {
  try {
    String qrResult = await BarcodeScanner.scan();
    setState(() {
      result = qrResult;
    });
  } on PlatformException catch (ex) {
    if (ex.code == BarcodeScanner.CameraAccessDenied) {
      setState(() {
        result = "Camera permission denied";
      });
    } else {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  } on FormatException {
    setState(() {
      result = "kamu menekan tombol kembali sebelum melakukan scanning";
    });
  } catch (ex) {
    setState(() {
      result = "unknown error $ex";
    });
  }
}

  List<String> agama=["Ujang Sanchez","Ujang Uyey","Siti Cemerlang"];
  String _agama="Ujang Sanchez";

  Future<List> getData() async{
    final response=await http.get("http://10.0.2.2/knowme/getdata.php");
    return json.decode(response.body);
  }
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
        title: Text('Transaksi'),
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
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/images/undraw_searching_p5ux.png", width: 290, fit: BoxFit.fitWidth, alignment: Alignment.topCenter,),
              ),
              Text("Cari Username", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
              Text("Cari orang berdasarkan username mereka", style: TextStyle(fontSize: 15.0, color: Colors.black45),),
              Padding(padding: EdgeInsets.only(top: 10.0),),
              Center(
                  //padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                           ClipRRect(
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(145),
                               topRight: Radius.circular(145),
                               bottomLeft: Radius.circular(145),
                               bottomRight: Radius.circular(145),
                             ),
                             child: RaisedButton(
                              color: Colors.blue,
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.search, color: Colors.white,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Text("Cari", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/Transaksi_Person');
                              },
                          ),
                           ),
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text("Atau gunakan Scan QR", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
              ),
              Text("Scan untuk bertransaksi data", style: TextStyle(fontSize: 15.0, color: Colors.black45),),
              Text(code), /*
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
              ), */
              Column(
                children: <Widget>[
                  Text(
                    'Hasil:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    result,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom:5.0),
        child: FloatingActionButton.extended(
          icon: Icon(Icons.camera_alt),
          label: Text("Scan"),
          onPressed: _scanQR,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

