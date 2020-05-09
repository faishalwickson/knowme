import 'dart:io';
import 'package:flutter/material.dart';
import 'package:knowme/services/information.dart';
import 'package:knowme/services/person.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:http/http.dart' as http;

class Gambar extends StatefulWidget {
  @override
  _GambarState createState() => _GambarState();
}

class _GambarState extends State<Gambar> {

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
/*
Future upload(File imageFile) async{
  var steam= new http.ByteStream(DelegatingStream.typed(imageFile.o()));
} */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Kartu"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
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
                  //upload(_image);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
