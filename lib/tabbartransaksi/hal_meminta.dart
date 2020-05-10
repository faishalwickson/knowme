import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';

class Meminta extends StatefulWidget {
  @override
  _MemintaState createState() => _MemintaState();
}

class _MemintaState extends State<Meminta> {
  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'jakob-owens-bQ0TogIULCM-unsplash.jpg');
  }
  List<Person> daftar = [
    Person(nama:'Ujang Sanchez', username: '@ujhez', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'fred-moon-vSI2KnI4Abc-unsplash.jpg'),
    Person(nama:'Data Kelas R06', username: '@ujhez, @japas ceria, ...',foto: 'helena-lopes-PGnqT0rXWLs-unsplash.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/${daftar[0].foto}'),
                  radius: 35.0,
                ),
                Padding(padding: EdgeInsets.only(left: 20.0),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(daftar[0].nama, style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold) ,),
                    Text(daftar[0].username, style: TextStyle(fontSize: 15.0) ,),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:50.0, top: 20),
              child: Text("Centang data yang akan kamu minta", style: TextStyle(fontSize: 15),),
            ),
            SizedBox(height: 20),
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
                    padding: const EdgeInsets.only(right: 170),
                    child: Text("Data Diri Umum", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (bool value){
                            setState(() {
                              checkBoxValue = value;
                            });
                          },
                        ),
                        Text("Email", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue2,
                          onChanged: (bool value){
                            setState(() {
                              checkBoxValue2 = value;
                            });
                          },
                        ),
                        Text("ID Line", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue3,
                          onChanged: (bool value){
                            setState(() {
                              checkBoxValue3 = value;
                            });
                          },
                        ),
                        Text("No. Whatsapp", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                          value: checkBoxValue4,
                          onChanged: (bool value){
                            setState(() {
                              checkBoxValue4 = value;
                            });
                          },
                        ),
                        Text("Username Instagram", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text("Daftar Kartu", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Row(
                      children: <Widget>[
                         Checkbox(
                           value: checkBoxValue5,
                           onChanged: (bool value){
                           setState(() {
                           checkBoxValue5 = value;
                           });
                          },
                        ),
                      Text("Kartu Tanda Penduduk", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Row(
                      children: <Widget>[
                         Checkbox(
                           value: checkBoxValue6,
                           onChanged: (bool value){
                           setState(() {
                           checkBoxValue6 = value;
                           });
                          },
                        ),
                      Text("Kartu Tanda Mahasiswa", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Row(
                      children: <Widget>[
                         Checkbox(
                           value: checkBoxValue7,
                           onChanged: (bool value){
                           setState(() {
                           checkBoxValue7 = value;
                           });
                          },
                        ),
                      Text("Surat Izin Mengemudi", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 10.0),
                     child: Row(
                      children: <Widget>[
                         Checkbox(
                           value: checkBoxValue8,
                           onChanged: (bool value){
                           setState(() {
                           checkBoxValue8 = value;
                           });
                          },
                        ),
                      Text("Kartu Keluarga", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context,'/formtambahkartu');
          },
          child: Icon(Icons.send),
          backgroundColor: Colors.grey[900],
        )
    );
  }
}
