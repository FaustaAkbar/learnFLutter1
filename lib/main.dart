import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          //(Untuk bisa croll(Width dan heightakan menyesuaikan ukuran layarnya))
          //scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.pink,
            ),
            Container(height: 300, width: 300, color: Colors.black),
            Container(
              height: 300,
              width: 300,
              color: Colors.orange,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
