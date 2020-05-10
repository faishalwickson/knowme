import 'package:flutter/material.dart';
import 'package:knowme/services/person.dart';

class transactionPage extends StatefulWidget {
  @override
  transactionState createState() => transactionState();
}

class transactionState extends State<transactionPage>{
  /*
  void setupPerson(){
    Person instance = Person(nama: 'Kesbor', username: '@kesborian', foto: 'jakob-owens-bQ0TogIULCM-unsplash.jpg');
  }
  List<Person> daftar = [
    Person(nama:'Udin Sanchez', username: '@ujhez', foto: 'cobro-JDJIDtZNJsM-unsplash.jpg'),
    Person(nama:'Asep Uyey', username: '@japasceria', foto: 'fred-moon-vSI2KnI4Abc-unsplash.jpg'),
    Person(nama:'Siti Cemerlang', username: '@stglowing', foto: 'photo-1574297500578-afae55026ff3.webp'),
  ];
  String _daftar="Udin Sanchez";
*/
  List<String> agama=["Ujang Sanchez","Ujang Uyey","Siti Cemerlang"];
  String _agama="Ujang Sanchez";

void pilihAgama(String value){
  setState((){
    _agama=value;
  });
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("Cari Username", style: TextStyle(fontSize: 25.0),),
          Text("Cari orang berdasarkan username mereka!", style: TextStyle(fontSize: 15.0, color: Colors.black45),),
          Padding(padding: EdgeInsets.only(top: 10.0),),
          Row(
            children: <Widget>[
              Text("Masukkan Username    ", style: TextStyle(fontSize: 15.0, color: Colors.blue),),
              DropdownButton(
                onChanged: (String value){
                  pilihAgama(value);
                },
                value: _agama,
                items: agama.map((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RaisedButton(
                  child: Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(context, '/Transaksi_Person');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}

