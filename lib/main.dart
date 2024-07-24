import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Fausta",
      "Age": 34,
      "Color": [
        "Blue",
        "Magenta",
        "Yellow",
        "Blue",
        "Magenta",
        "Yellow",
        "Blue",
        "Magenta",
        "Yellow"
      ]
    },
    {
      "Nama": "Akbar",
      "Age": 343,
      "Color": ["Maroon", "Black", "White"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView(
          children: myList.map((data) {
            List mycolor = data['Color'];
            return Card(
              // margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name ${data['Nama']}"),
                            Text("Age ${data['Age']}")
                          ],
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: mycolor.map((color) {
                        return Container(
                          child: Text(color),
                          color: Colors.amber,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                        );
                      }).toList()),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
