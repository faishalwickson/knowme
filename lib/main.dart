import 'package:flutter/material.dart';
import 'package:knowme/pages/Home.dart';
import 'package:knowme/pages/Riwayat.dart';
import 'package:knowme/pages/Transaksi_Person.dart';
import 'package:knowme/pages/formtambahkartu.dart';
import 'package:knowme/pages/masukaninfo.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes:{
    '/Riwayat': (context) => Riwayat(),
    '/home': (context) => Home(),
    '/Transaksi_Person': (context) => TransaksiPerson(),
    '/formtambahkartu': (context) => TambahKartu(),
    '/masukaninfo': (context) => MyApp(),
  }
));
