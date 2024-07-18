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
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My App",
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            " Budi bangun lebih awal dari ayam-ayamnya dan bekerja keras di ladang kecilnya, menanam berbagai macam sayuran. Meski hidup sederhana, Budi tak pernah mengeluh. Ia selalu tersenyum, menyapa semua orang dengan ramah, dan membantu tetangganya tanpa pamrih. Suatu hari, seorang pelancong dari kota besar tersesat dan singgah di desa itu",
            textAlign: TextAlign.center,
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 3,
                decorationColor: Colors.green,
                backgroundColor: Colors.yellow,
                fontFamily: 'Fausta',
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: Colors.red,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
