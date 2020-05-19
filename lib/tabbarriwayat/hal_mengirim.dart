import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
/*
class Mengirim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("MENGIRIM", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.radio,size:90,)
          ],
        ),
      ),
    );
  }
}
 */
class Mengirim extends StatefulWidget {
  @override
  _MengirimState createState() => _MengirimState();
}

class _MengirimState extends State<Mengirim> {
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
        body: ListView.builder(
            itemCount: daftar.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 7.0),
                child: Container(
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
                        onTap: () {
                          print(daftar[index].nama);
                        },
                        title: Text(daftar[index].nama, style: TextStyle(fontSize: 20.0) ,),
                        subtitle: Text(daftar[index].username),

                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/${daftar[index].foto}'),
                        )
                    ),
                  ),
                ),
              );
            }
        )
    );
  }
}
