import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var angka = 10;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Counting",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$angka",
                style: TextStyle(fontSize: double.parse('$angka')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        angka + 1;
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        if (angka != 0) {
                          angka--;
                        }
                        ;
                      },
                      child: Text("-"))
                ],
              )
            ],
          )),
    );
  }
}
