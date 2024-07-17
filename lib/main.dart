import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Text("Hello World"),
        ),
        appBar: AppBar(
          title: Text("My Apps"),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

// Pada Scaffold atau pun widget yang lain sama seperti contoh dibawah ini untuk ilustrasinya
/*
class Orang{
  var nama;
  int umur;
  Orang({this.nama this.umur});
}

(nama:) ini adalah name argumen
Orang(nama: "Fausta");
*/