//import 'package:http/http.dart';
import 'dart:convert';

class Person {
  String nama;
  String username;
  int time;
  String foto;
  String url; //api waktu?

  Person({ this.nama, this.username, this.time, this.foto, this.url});
}
class DataDiri {
  String email;
  String nowa;
  String idline;
  String univ;

  DataDiri({ this.email, this.nowa, this.idline, this.univ});
}

class TaskModel{
  String title;
  String detail;
  String get getTitle => title;
  String get getDetail => detail;

  TaskModel(this.title, this.detail);
}
bool checkBoxValue = false;
bool checkBoxValue2 = false;
bool checkBoxValue3 = false;
bool checkBoxValue4 = false;
bool checkBoxValue5 = false;
bool checkBoxValue6 = false;
bool checkBoxValue7 = false;
bool checkBoxValue8 = false;