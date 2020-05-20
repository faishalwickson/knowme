import 'package:flutter/material.dart';
import 'package:knowme/pages/Home.dart';
import 'package:knowme/pages/Login.dart';
import 'package:knowme/pages/Riwayat.dart';
import 'package:knowme/pages/SignIn.dart';
import 'package:knowme/pages/Transaksi_Person.dart';
import 'package:knowme/pages/detaiKartu.dart';
import 'package:knowme/pages/editDataDiri.dart';
import 'package:knowme/pages/formtambahkartu.dart';
import 'package:knowme/pages/masukangambar.dart';
import 'package:knowme/pages/masukaninfo.dart';
import 'package:knowme/pages/masukangambar.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/Login',
  routes:{
    '/Riwayat': (context) => Riwayat(),
    '/home': (context) => Home(),
    '/Transaksi_Person': (context) => TransaksiPerson(),
    '/formtambahkartu': (context) => TambahKartu(),
    '/masukaninfo': (context) => MyApp(),
    '/masukangambar': (context) => Gambar(),
    'editDataDiri': (context) => editDataDiriPage(),
    '/detailKartu': (context) => detailKartuPage(),
    '/Login': (context) => logInPage(),
    '/SignIn': (context) => signInPage(),

  }
));
