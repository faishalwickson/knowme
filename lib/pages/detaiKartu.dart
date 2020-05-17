import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class detailKartuPage extends StatefulWidget {
  @override
  detailKartuState createState() => detailKartuState();
}

class detailKartuState extends State<detailKartuPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Detail Kartu'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.only(topLeft: Radius.circular(20.00), topRight: Radius.circular(20.0)),
                child: Image(
                  height: 180,
                  width: 400,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/KTP.jpg'),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 7, 10, 7),
                title: Text(
                  'Kartu Tanda Penduduk',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Nama : Kesbor Munif Mardial', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('NIK : 66653688847777', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Tempat, Tanggal Lahir : Ciawi, 29 Mar 1998', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Alamat : Dramaga Cinta, blok R', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Pekerjaan : Wiraswasta', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Status : Menikah', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Golongan Darah : O', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Padding(
                         child: FlatButton(
                           color: Colors.blue,
                           textColor: Colors.white,
                           disabledColor: Colors.blue,
                           disabledTextColor: Colors.white,
                           padding: EdgeInsets.all(8.0),
                           splashColor: Colors.blueAccent,
                           child: Text(
                             "Hapus Kartu",
                             style: TextStyle(fontSize: 20.0),
                           ),
                         ),
                         padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                       ),
                       Padding(
                         child: FlatButton(
                           color: Colors.blue,
                           textColor: Colors.white,
                           disabledColor: Colors.blue,
                           disabledTextColor: Colors.white,
                           padding: EdgeInsets.all(8.0),
                           splashColor: Colors.blueAccent,
                           child: Text(
                             "Edit Kartu",
                             style: TextStyle(fontSize: 20.0),
                           ),
                         ),
                         padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                       )
                     ],
                   )
                 )
               ],
             )
            ],
          ),
        ),
      ),
    );
  }

}