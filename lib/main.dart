import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(10, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255)),
    );
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Grid view",
          ),
          backgroundColor: Colors.blueAccent,
        ),
        /* body: GridView(// Contoh 1
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: myList,
        ), */
        body: GridView.count(
          //Contoh 2
          padding: EdgeInsets.all(10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList,
          childAspectRatio: 3 / 4,
        ),
      ),
    );
  }
}
