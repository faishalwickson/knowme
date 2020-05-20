import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:knowme/tabbarriwayat/Detailkirim.dart';

class Mengirim extends StatefulWidget {
  @override
  _MengirimState createState() => _MengirimState();
}

class _MengirimState extends State<Mengirim> {
  Future<List> getriwayat() async{
    final response = await http.get("http://10.0.2.2/knowme/getriwayat.php");
    return json.decode(response.body);
  }
  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'jakob-owens-bQ0TogIULCM-unsplash.jpg');
  }
  List<Person> daftar = [
    Person(nama:'Ujang Sanchez', username: '@ujhez', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'fred-moon-vSI2KnI4Abc-unsplash.jpg'),
    Person(nama:'Data Kelas R06', username: '@ujhez, @japas ceria, ...',foto: 'helena-lopes-PGnqT0rXWLs-unsplash.jpg'),
    Person(nama:'Siti Cemerlang', username: '@stglowing', foto: 'photo-1574297500578-afae55026ff3.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List>(
          future: getriwayat(),
          builder: (context, snapshot){
            if(snapshot.hasError) print(snapshot.error);

            return snapshot.hasData 
                ? new ItemList( list: snapshot.data,)
                : new Center ( child: CircularProgressIndicator(),);
          },
        ),
    );
  }
}
class ItemList extends StatelessWidget {

  List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list==null? 0: list.length,
        itemBuilder: (context, i){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 7.0),
            child: Column(
              children: <Widget>[
                //Text(list[i]['nama']),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 5,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Card(
                    child: ListTile(
                        onTap: ()=> Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context)=> Detailkirim(list: list, index: i,)
                            )
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Text(list[i]['nama'], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold) ,),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:2.0),
                              child: Text(list[i]['username'],),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:5.0),
                              child: Text(list[i]['tanggal'], style: TextStyle(fontSize: 10),),
                            ),
                          ],
                        ),

                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/${list[i]['foto']}'),
                          radius: 24,
                        )
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}


    

