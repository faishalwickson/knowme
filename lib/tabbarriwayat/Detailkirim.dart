import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:knowme/pages/Home.dart';
import 'package:knowme/main.dart';

class Detailkirim extends StatefulWidget {
  List list;
  int index;
  Detailkirim({this.index,this.list});
  @override
  _DetailkirimState createState() => _DetailkirimState();
}



class _DetailkirimState extends State<Detailkirim> {
  void deleteminta(){
    var url= "http://10.0.2.2/knowme/deleteminta.php";
    http.post(url,body:{
      'id':widget.list[widget.index]['id']
    });
  }
  void confirm(){
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 260,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/undraw_feeling_blue_4b7q.png", width: 280, fit: BoxFit.fitWidth, alignment: Alignment.topCenter,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: Text("Kamu yakin mau menghapus kenangan ini?"),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        RaisedButton(
            child: Text("Hapus"),
            color: Colors.red,
            onPressed: (){
              deleteminta();
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context)=>Home(),
                  )
              );
            }
        ),
        RaisedButton(
          child: Text("Kembali"),
          color: Colors.green,
          onPressed: ()=>Navigator.pop(context),
        ),
      ],
    );

    showDialog(context: context, child: alertDialog );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]['nama']}"),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("Data Diri", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                Padding(
                                  padding: const EdgeInsets.only(left:140.0),
                                  child: FlatButton.icon(
                                    onPressed: ()=>confirm(),
                                    icon: Icon(Icons.delete, color: Colors.red, size: 20,),
                                    label: Text('hapus'),
                                  ),
                                ),

                              ],
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("dikirimkan pada: ${widget.list[widget.index]['tanggal']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("email: ${widget.list[widget.index]['email']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("username: ${widget.list[widget.index]['username']}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("KTP", style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                              ],
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("Informasi1: No. KTP: 0006908120993", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("Informasi2: Golongan Darah O, Lahir di Sumenep", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 7.0, 5.0, 10.0),
                          child: Text("Informasi3: KTP dibuat di Cihampelas", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
