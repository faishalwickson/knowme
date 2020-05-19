import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:knowme/pages/detaiKartu.dart';
import 'package:knowme/pages/formtambahkartu.dart';
import './detaiKartu.dart';

class dashboardPage extends StatefulWidget {
  @override
  dashboardState createState() => dashboardState();
}

class dashboardState extends State<dashboardPage>{

  Future<List> getData() async{
    final response=await http.get("http://10.0.2.2/knowme/getdata.php");
    return json.decode(response.body);
  }
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

      body: FutureBuilder<List>(
        future:getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ItemList(list: snapshot.data,)
              : Center( child:CircularProgressIndicator(),);
        },
      ),


        floatingActionButton: FloatingActionButton(
          onPressed: ()=>Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context)=> TambahKartu(),
            )
          ),
            //Navigator.pushNamed(context,'/formtambahkartu');

          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        )
    );
  }
}
class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list==null? 0: list.length,
        itemBuilder: (context,i){
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child:  Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 5,
                  child: GestureDetector(
                    onTap: ()=>Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context)=> detailKartuPage(list: list, index: i,)
                      )
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      title: Padding(
                        padding: EdgeInsets.only(left:8.0, right:8, top: 2.0, bottom: 0),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.only(topLeft: Radius.circular(20.00), topRight: Radius.circular(20.0)),
                          child: Image(
                            height: 170,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/images/${list[i]['scan_kartu']}'),
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
                                list[i]['nama_kartu'],
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Ditambahkan pada: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    list[i]['Ditambahkanpada'] ,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
    );
  }
}
