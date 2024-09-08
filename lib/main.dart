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

            return Dismissible(
              direction: DismissDirection.endToStart,
              key: Key(data['Name'].toString()), // Change the key to be unique
              confirmDismiss: (direction) {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirm Deletion"),
                      content: Text(
                          "Are you sure you want to delete ${data['Name']}?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false); // Cancel deletion
                          },
                          child: Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true); // Confirm deletion
                          },
                          child: Text("Delete"),
                        ),
                      ],
                    );
                  },
                );
              },
              onDismissed: (direction) {
                setState(() {
                  myList.remove(data); // Remove the item from the list
                });
              },
              child: Card(
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
                              Text("Name: ${data['Name']}"),
                              Text("Age: ${data['Age']}")
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: Mycolor.map((color) {
                            return Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 10),
                                color: Colors.yellow,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(color),
                                ));
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
