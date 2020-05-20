import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:knowme/pages/Home.dart';
import 'package:knowme/pages/editKartu.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';

import 'Dashboard.dart';


class detailKartuPage extends StatefulWidget {
  List list;
  int index;
  detailKartuPage({this.index,this.list});
  @override
  detailKartuState createState() => detailKartuState();
}

class detailKartuState extends State<detailKartuPage> with SingleTickerProviderStateMixin{

  void deleteData(){
    var url="http://10.0.2.2/knowme/deletedata.php";
    http.post(url, body: {
      'id': widget.list[widget.index]['id']
    });
  }

  void confirm (){
    AlertDialog alertDialog = new AlertDialog(
      content: Text('Anda Yakin Ingin Menghapus ${widget.list[widget.index]['nama_kartu']}?'),
      actions: <Widget>[
        RaisedButton(
          child: Text('Ya'),
          color: Colors.red,
          onPressed: (){
            deleteData();
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context)=>Home(),
                )
            );
            Toast.show("Berhasil Menghapus Kartu", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
          }
        ),
        RaisedButton(
          child: Text('Tidak'),
          color: Colors.blue,
          onPressed: ()=> Navigator.pop(context),
        ),
      ],
    );
    
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('${widget.list[widget.index]['nama_kartu']}'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: new BorderRadius.only(topLeft: Radius.circular(20.00), topRight: Radius.circular(20.0)),
                child: Image(
                  height: 175,
                  width: 400,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/${widget.list[widget.index]['scan_kartu']}'),
                ),
              ),
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.fromLTRB(15, 18, 10, 10),
                   child: Text(
                     '${widget.list[widget.index]['nama_kartu']}',
                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 0, 5.0, 10.0),
                   child: Text('Ditambahkan pada ${widget.list[widget.index]['Ditambahkanpada']}', style: TextStyle(fontSize: 11, color: Colors.grey),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Informasi 1 : ${widget.list[widget.index]['informasi1']}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Informasi 2 : ${widget.list[widget.index]['informasi2']}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Informasi 3 : ${widget.list[widget.index]['informasi3']}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Text('Masa Berlaku : ${widget.list[widget.index]['masa_berlaku']}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       Padding(
                         child: FlatButton(
                           color: Colors.blue,
                           textColor: Colors.white,
                           disabledColor: Colors.blue,
                           disabledTextColor: Colors.white,
                           padding: EdgeInsets.all(8.0),
                           splashColor: Colors.blueAccent,
                           onPressed: ()=>confirm(),
                           child: Text(
                             "Hapus Kartu",
                             style: TextStyle(fontSize: 20.0),
                           ),
                         ),
                         padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                       ),
                       Padding(
                         child: FlatButton(
                           color: Colors.blue,
                           textColor: Colors.white,
                           disabledColor: Colors.blue,
                           disabledTextColor: Colors.white,
                           padding: EdgeInsets.all(8.0),
                           splashColor: Colors.blueAccent,
                           onPressed: ()=>Navigator.of(context).push(
                               MaterialPageRoute(
                                 builder: (BuildContext context)=>editKartuPage(list: widget.list, index: widget.index,),
                               )
                           ),
                           child: Text(
                             "Edit Kartu",
                             style: TextStyle(fontSize: 20.0),
                           ),
                         ),
                         padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                       )
                     ],
                   )
                 )
               ],
             )
            ],
          ),
        ),
      ),
    );
  }

}