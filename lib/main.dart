import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Fausta",
      "Age": 20,
      "Color": [
        "Maroon",
        "Black",
        "Yellow",
        "Maroon",
        "Black",
        "Yellow",
        "Maroon",
        "Black",
        "Yellow",
      ]
    },
    {
      "Name": "Akbar",
      "Age": 20,
      "Color": ["Maroon", "Black", "Yellow"]
    },
    {
      "Name": "Maliki",
      "Age": 20,
      "Color": ["Maroon", "Black", "Yellow"]
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
            "Card of person",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: ListView(
            children: myList.map((data) {
          List Mycolor = data['Color'];
          int angka = 0;
          int ke = 0;

          return Card(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name ${data['Name']}"),
                          Text("Age ${data['Age']}")
                        ],
                      ),
                      SizedBox(
                        child: Text("$angka"),
                        width: 100,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: Mycolor.map((color) {
                        if (color[ke] == "Black") {
                          return ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  angka++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                color: Colors.yellow,
                                child: Text(color),
                                padding: EdgeInsets.all(20),
                              ));
                        } else {
                          ke++;
                          return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            color: Colors.yellow,
                            child: Text(color),
                            padding: EdgeInsets.all(20),
                          );
                        }
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}
