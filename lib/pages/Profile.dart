import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profilePage>{
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
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                child: Text(
                  'Daftar Kartu',
                  style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              FittedBox(
                    fit: BoxFit.fill,
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196f3),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 334,
                                height: 143,
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.only(topLeft: Radius.circular(24.00), topRight: Radius.circular(24.0)),
                                  child: Image(
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                    image: AssetImage('assets/images/KTP.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                  height: 51,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(13.0, 8.0, 131.0, 8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Kartu Tanda Penduduk',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Ditambahkan Pada 16/05/2020',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              SizedBox(height: 20,),
              FittedBox(
                  fit: BoxFit.fill,
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196f3),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 334,
                              height: 143,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.only(topLeft: Radius.circular(24.00), topRight: Radius.circular(24.0)),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('assets/images/KTP.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                height: 51,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(13.0, 8.0, 131.0, 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Kartu Tanda Penduduk',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        'Ditambahkan Pada 16/05/2020',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 20,),
              FittedBox(
                  fit: BoxFit.fill,
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196f3),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              width: 334,
                              height: 143,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.only(topLeft: Radius.circular(24.00), topRight: Radius.circular(24.0)),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('assets/images/KTP.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                                height: 51,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(13.0, 8.0, 131.0, 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Kartu Tanda Penduduk',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        'Ditambahkan Pada 16/05/2020',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
              SizedBox(height: 20.0,)
            ],
          ),
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

