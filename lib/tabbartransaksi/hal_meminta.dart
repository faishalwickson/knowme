import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:knowme/pages/Home.dart';
import 'package:knowme/services/person.dart';

class Meminta extends StatefulWidget {
  @override
  _MemintaState createState() => _MemintaState();
}

class _MemintaState extends State<Meminta> {
  DateTime _dateTime= DateTime.now();
  TextEditingController controllerusername = TextEditingController();
  TextEditingController controllerwaktu= TextEditingController();
  TextEditingController controllerketerangan = TextEditingController();

  void addminta(){
    var url="http://10.0.2.2/knowme/addminta.php";
    http.post(url,body:{
      "username":controllerusername.text,
      "tanggal": controllerwaktu.text,
      "keterangan": controllerketerangan.text,
    });
  }

  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'jakob-owens-bQ0TogIULCM-unsplash.jpg');
  }
  List<Person> daftar = [
    Person(nama:'Ujang Sanchez', username: '@ujhez', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'fred-moon-vSI2KnI4Abc-unsplash.jpg'),
    Person(nama:'Data Kelas R06', username: '@ujhez, @japas ceria, ...',foto: 'helena-lopes-PGnqT0rXWLs-unsplash.jpg'),
  ];
  Future<List> getData() async{
    final response=await http.get("http://10.0.2.2/knowme/getdata.php");
    return json.decode(response.body);
  }

  void kirimdata(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 250.0,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/undraw_message_sent_1030.png", width: 280, fit: BoxFit.fitWidth, alignment: Alignment.topCenter,),
            Text("Permintaanmu sudah terkirim!"),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: SizedBox(
                width: 120,
                child: RaisedButton(
                  color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.home, color: Colors.white,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text("Kembali", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  onPressed: (){
                    addminta();
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context)=>Home(),
                        )
                    );
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[ /*
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
            ), */
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 10),
              child: Text("Masukkan username", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                controller: controllerusername,
                decoration: InputDecoration(
                    hintText: "Contoh: @kekeyipentol",
                    labelText: "masukan username yang dituju",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 10),
              child: Text("Pilih data yang mau kamu minta", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Data ini adalah data milik orang yang dituju", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top:20),
              child: Text("Tambahkan Waktu Transaksi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:  TextField(
                controller: controllerwaktu,
                decoration: InputDecoration(
                    hintText: "Contoh: 2020-06-09",
                    labelText: "Tanggal",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),/*
              Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Pilih Tanggal"),
                    onPressed: (){
                      showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2001), lastDate: DateTime(2022)).then((date){
                        setState(() {
                          _dateTime = date;
                        });
                      });
                    },
                  ),
                ],
              ) */

            Padding(
              padding: const EdgeInsets.only(left: 10, top:20),
              child: Text("Tambahkan keterangan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Sampaikan kenapa data mereka penting buatmu", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                controller: controllerketerangan,
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: "Contoh: Saya meminta data anda untuk administrasi pekerjaan",
                    labelText: "Keterangan",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            kirimdata();
          },
          child: Icon(Icons.send),
          backgroundColor: Colors.blue,
        )
    );
  }
}
