import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class profilePage extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profilePage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Profil'),
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
          padding: EdgeInsets.all(20.00),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/jakob-owens-bQ0TogIULCM-unsplash.jpg'),
                    radius: 35.0,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Kesbor Mardial', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold) ,),
                      Text('@kesborian', style: TextStyle(fontSize: 15.0) ,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 15,
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                          child: Row(
                            children: <Widget>[
                              Text("Data Diri", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(160.0, 0.0, 0.0, 0.0),
                                child: FlatButton.icon(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/editDataDiri');
                                  },
                                  icon: Icon(Icons.edit, color: Colors.black, size: 20,),
                                  label: Text(''),
                                )
                              )
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text('Email : Kesbor@mail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text('Instagram : @Kesbor69', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text('Facebook : Kesbor Selalu Setia', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text('Alamat : Dramaga Cinta, blok R', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                ),
                ],
              ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 0.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Kode QR", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(160.0, 0.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/editDataDiri');
                                          },
                                          icon: Icon(Icons.share, color: Colors.black, size: 20,),
                                          label: Text(''),
                                        )
                                    )
                                  ],
                                )
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: QrImage(
                                  version: 2,
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.grey[900],
                                  errorCorrectionLevel: QrErrorCorrectLevel.L,
                                  padding: EdgeInsets.all(20),
                                  size:200,
                                  data: "@kesborian",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
                ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom:5.0),
          child: FloatingActionButton.extended(
            icon: Icon(Icons.add),
            label: Text("Tambah Kartu"),
            onPressed: (){
              Navigator.pushNamed(context,'/formtambahkartu');
            },
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}

