import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:knowme/pages/Dashboard.dart';
import 'package:toast/toast.dart';

class editKartuPage extends StatefulWidget {

  final List list;
  final int index;

  editKartuPage({this.list, this.index});

  @override
  editKartuState createState() => editKartuState();
}

class editKartuState extends State<editKartuPage> with SingleTickerProviderStateMixin{

  TextEditingController controllerNama;
  TextEditingController controllerMasa;
  TextEditingController controllerInfo1;
  TextEditingController controllerInfo2;
  TextEditingController controllerInfo3;
  TextEditingController controllerDitambahkan;

  void editData(){
    var url="http://10.0.2.2/knowme/editdata.php";
        http.post(url, body: {
          "id": widget.list[widget.index]['id'],
          "itemnama": controllerNama.text,
          "itemmasa": controllerMasa.text,
          "info1": controllerInfo1.text,
          "info2": controllerInfo2.text,
          "info3": controllerInfo3.text,
          "ditambahkan": controllerDitambahkan.text,
        });
  }

  @override
  void initState() {
    controllerNama= TextEditingController(text: widget.list[widget.index]['nama_kartu']);
    controllerMasa= TextEditingController(text: widget.list[widget.index]['masa_berlaku']);
    controllerInfo1= TextEditingController(text: widget.list[widget.index]['informasi1']);
    controllerInfo2= TextEditingController(text: widget.list[widget.index]['informasi2']);
    controllerInfo3= TextEditingController(text: widget.list[widget.index]['informasi3']);
    controllerDitambahkan= TextEditingController(text: widget.list[widget.index]['Ditambahkanpada']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: controllerNama,
              decoration: InputDecoration(
                  hintText: "Contoh: KTP, KTM, dll",
                  labelText: "Nama Kartu",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              controller: controllerMasa,
              decoration: InputDecoration(
                  hintText: "Masa berlaku",
                  labelText: "Masukkan tahun masa berlaku berakhir",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              controller: controllerInfo1,
              decoration: InputDecoration(
                  hintText: "Contoh: No. Kartu = 16929596929",
                  labelText: "Informasi 1",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              controller: controllerInfo2,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: "Contoh: status = menikah,...",
                  labelText: "Informasi 2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              controller: controllerInfo3,
              decoration: InputDecoration(
                  hintText: "Contoh: dibuat di Makassar",
                  labelText: "Informasi 3",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
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
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Masukkan Informasi dari Kartu",
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/masukaninfo');
                    },
                    icon: Icon(Icons.add_circle_outline, color: Colors.grey[900], size: 40.0),
                    label: Text(''),
                  ),
                ],
              ),
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
                    blurRadius: 5,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Masukkan Scan atau Foto Kartu",
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/masukangambar');
                    },
                    icon: Icon(Icons.add_photo_alternate, color: Colors.grey[900], size: 40.0),
                    label: Text(''),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),),
            TextField(
              controller: controllerDitambahkan,
              decoration: InputDecoration(
                  hintText: "Contoh: 29-08-2020",
                  labelText: "Diedit pada",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 120.0),
              child: RaisedButton(
                child: Text("Edit Kartu", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                onPressed: (){
                  editData();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context)=>dashboardPage(),
                    )
                  );
                  Toast.show("Berhasil Mengedit Kartu", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}