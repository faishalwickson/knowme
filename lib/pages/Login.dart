import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class logInPage extends StatefulWidget {
  @override
  logInState createState() => logInState();
}

class logInState extends State<logInPage> with SingleTickerProviderStateMixin{

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  Future<List> login() async {
    final response = await http.post('http://10.0.2.2/knowme/login.php', body: {
      "username": user.text,
      "pass": pass.text,
    });

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                'Selamat Datang!!!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                controller: user,
                decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Usename",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                disabledColor: Colors.blue,
                disabledTextColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: (){
                  login();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            )
          ]
            ),
      )
      );
  }
}