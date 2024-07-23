import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Fausta",
      "Age": 10,
      "Color": ["Black", "White", "blue"]
    },
    {
      "Name": "Rendi",
      "Age": 10,
      "Color": ["Orange", "Magenta", "brown"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mapping List",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
              children: myList.map((data) {
            List listColor = data['Color'];
            return Card(
              child: Column(
                children: [
                  //row
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("Name ${data['Name']}"),
                          Text("Age ${data['Age']}")
                        ],
                      )
                    ],
                  ),
                  //color
                  Row(
                      children: listColor.map((color) {
                    return Container(
                      child: Text(color),
                    );
                  }).toList())
                ],
              ),
            );
          }).toList())),
    );
  }
}
