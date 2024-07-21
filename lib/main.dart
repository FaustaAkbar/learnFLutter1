import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Image tes",
            style: TextStyle(fontFamily: "Fausta"),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 300,
            child: Image.asset(
              "images/image1.png",
              fit: BoxFit.fitHeight,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
