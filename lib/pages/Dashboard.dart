import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboardPage extends StatefulWidget {
  @override
  dashboardState createState() => dashboardState();
}

class dashboardState extends State<dashboardPage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text('KnowMe'),
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
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: Text(
              'Daftar Kartu',
              style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        Padding(
          padding: EdgeInsets.all(15),
          child:  Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              title: Padding(
                padding: EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: new BorderRadius.only(topLeft: Radius.circular(20.00), topRight: Radius.circular(20.0)),
                  child: Image(
                    height: 170,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/KTP.jpg'),
                  ),
                ),
              ),

              subtitle: Padding(
                padding: EdgeInsets.fromLTRB(10, 12, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Kartu Tanda Penduduk',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Ditambahkan Pada 16/05/2020',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ),
            ),
          ),
        )
        ],
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


/*Column(
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
                   )
               ),
               Padding(
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
               ),
             ],
           ),*/