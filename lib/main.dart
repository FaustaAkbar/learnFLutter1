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
            title: Text("Visible & Invisible Widget"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: /*Column(
          mainAxisAlignment: MainAxisAlignment.center,//(Atas ke bawah)
          crossAxisAlignment: CrossAxisAlignment.end,//(Samping kiri ke samping kanan)
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: 70,
              color: const Color.fromARGB(255, 236, 2, 2),
            ),
            Container(
              height: 50,
              width: 40,
              color: Color.fromARGB(255, 255, 7, 230),
            )
          ],
        ),*/
              /*
              Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //(Samping kiri ke kanan)
                  crossAxisAlignment: CrossAxisAlignment.end, //(Atas ke bawah)
                  children: [
                Container(
                  height: 200,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: const Color.fromARGB(255, 236, 2, 2),
                ),
                Container(
                  width: 50,
                  height: 40,
                  color: Color.fromARGB(255, 255, 7, 230),
                )
              ])*/
              Stack(
                  //(Wiget Stack tidak memerlukan mainaxisaligment ataupun croossaxisaligment)
                  children: [
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.green,
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.black,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: const Color.fromARGB(255, 236, 2, 2),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 255, 7, 230),
                )
              ])),
    );
  }
}
