import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
/*
class Meminta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("MEMINTA", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.headset,size:90,)
          ],
        ),
      ),
    );
  }
}
*/

class Meminta extends StatefulWidget {
  @override
  _MemintaState createState() => _MemintaState();
}

class _MemintaState extends State<Meminta> {
  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'photo-1581382575275-97901c2635b7.webp');
  }
  List<Person> daftar = [
    Person(nama:'Udin Sanchez', username: '@ujhez', foto: 'helena-lopes-PGnqT0rXWLs-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Data Kelas R06', username: '@ujhez, @japas ceria, ...',foto: 'pablo-no-messages.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: daftar.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(daftar[index].nama),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${daftar[index]}'),
              )
            ),
          );
        }
      )
    );
  }
}
