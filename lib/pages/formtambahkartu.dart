import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:io';
import 'package:knowme/services/information.dart';
import 'package:knowme/services/person.dart';
import 'package:provider/provider.dart';
import 'package:knowme/pages/masukangambar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';


class TambahKartu extends StatefulWidget {
  @override
  _TambahKartuState createState() => _TambahKartuState();
}

class _TambahKartuState extends State<TambahKartu> {

/*
  void kirimdata(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 250.0,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/undraw_data_processing_yrrv.png", width: 250, fit: BoxFit.fitWidth, alignment: Alignment.topCenter,),
            Text("Kartu akan ditambahkan"),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: RaisedButton(
                child: Text("Setuju"),
                onPressed: ()=>Navigator.pop(context),
              ),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }
*/
TextEditingController controllerNama = TextEditingController();
TextEditingController controllerMasa = TextEditingController();
TextEditingController controllerInfo1 = TextEditingController();
TextEditingController controllerInfo2 = TextEditingController();
TextEditingController controllerInfo3 = TextEditingController();
//TextEditingController controllerScankartu = TextEditingController();
TextEditingController controllerDitambahkan = TextEditingController();

  void adddata(){
    var url="http://10.0.2.2/knowme/adddata.php";
   // upload(_image);
    http.post(url,body:{

      "itemnama" : controllerNama.text,
      "itemmasa" : controllerMasa.text,
      "info1" : controllerInfo1.text,
      "info2" : controllerInfo2.text,
      "info3" : controllerInfo3.text,
     // "scankartu" : controllerScankartu.text,
      "ditambahkan" : controllerDitambahkan.text,
    });
  }

  File _image;
  Future getImageGallery() async{
    var imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = imageFile;
    });
  }
  Future getImageCamera() async{
    var imageFile = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = imageFile;
    });
  }

  Future upload(File imageFile) async{
    var stream= new http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    var length = await imageFile.length();
    var uri = Uri.parse("http://10.0.2.2/knowme/adddata.php");

    var request = new http.MultipartRequest("POST", uri);
    var multipartFile = new http.MultipartFile("image", stream, length, filename: basename(imageFile.path));

    request.files.add(multipartFile);

    var response = await request.send();

    if(response.statusCode==200){
      print("Image Uploaded");
    }else{
      print("Upload failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kartu"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
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
                  labelText: "Ditambahkan pada",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ), /*
            Column(
              children: <Widget>[
                Center(
                  child: _image== null
                      ? Text("Belum ada gambar yang dipilih") : Image.file(_image),
                ),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Icon(Icons.image),
                      onPressed: getImageGallery,
                    ),
                    RaisedButton(
                      child: Icon(Icons.camera_alt),
                      onPressed: getImageCamera,
                    ),
                    Expanded(child: Container(),),
                    RaisedButton(
                      child: Text("Unggah Foto"),
                      onPressed: (){
                       // upload(_image);
                      },
                    ),
                  ],
                ),
              ],
            ), */
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 120.0),
              child: RaisedButton(
                child: Text("Tambah Kartu", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                onPressed: (){
                  adddata();
                  Navigator.pop(context);
                  },
              ),
            ),
          ],
        ),
    ),

    );
  }
}




