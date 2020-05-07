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

class TaskModel{
  String title;
  String detail;
  String get getTitle => title;
  String get getDetail => detail;

  TaskModel(this.title, this.detail);
}
