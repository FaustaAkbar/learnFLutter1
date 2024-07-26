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
            leading: Container(
              color: Colors.orange,
            ),
            backgroundColor: Colors.blue,
            title: Container(
              width: 200,
              height: 20,
              color: Color.fromARGB(255, 160, 13, 106),
            ),
            // titleSpacing: 0,
            actions: [
              Container(
                width: 40,
                color: Colors.purple,
              ),
              Container(
                width: 40,
                color: Color.fromARGB(255, 127, 229, 25),
              ),
              Container(
                width: 40,
                color: const Color.fromARGB(255, 0, 0, 0),
              )
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(200),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.yellow,
                )),
            flexibleSpace: Container(
              child: Column(
                children: [Text("Hello")],
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              height: 200,
              color: Colors.grey,
            ),
          ),
          body: Center(
            child: Text("Hallo"),
          ),
        ));
  }
}
