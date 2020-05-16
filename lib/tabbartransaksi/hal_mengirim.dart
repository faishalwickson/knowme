import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';
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
  ];

  void kirimdata(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 300.0,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/undraw_deliveries_131a.png", width: 380, fit: BoxFit.fitWidth, alignment: Alignment.topCenter,),
            Text("Datamu sudah terkirim!"),
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: RaisedButton(
                child: Text("Kembali"),
                onPressed: ()=>Navigator.pop(context),
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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Pilih datamu yang akan dikirim", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Text("Data yang tercantum adalah data yang\nsudah kamu tambahkan", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
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
                              value: checkBoxValue11,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue11 = value;
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
                              value: checkBoxValue12,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue12 = value;
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
                              value: checkBoxValue13,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue13 = value;
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
                              value: checkBoxValue14,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue14 = value;
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
                              value: checkBoxValue15,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue15 = value;
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
                              value: checkBoxValue16,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue16 = value;
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
                              value: checkBoxValue17,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue17 = value;
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
                              value: checkBoxValue18,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue18 = value;
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
                padding: const EdgeInsets.only(top:20),
                child: Text("Pilih Hak Akses bagi penerima", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5),
                child: Text("Hak akses berguna untuk keamanan datamu", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
              ),
            SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 5),
                        blurRadius: 25,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text("Hak Akses", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: checkBoxValue19,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue19 = value;
                                });
                              },
                            ),
                            Text("Mengunduh", style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: checkBoxValue20,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue20 = value;
                                });
                              },
                            ),
                            Text("Menyebarkan", style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: checkBoxValue21,
                              onChanged: (bool value){
                                setState(() {
                                  checkBoxValue21 = value;
                                });
                              },
                            ),
                            Text("Akses Permanen", style: TextStyle(fontSize: 15),),
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            kirimdata();
          },
          child: Icon(Icons.send),
          backgroundColor: Colors.grey[900],
        )
    );
  }
}
