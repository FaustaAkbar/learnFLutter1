import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //(Karena kita menggunakan StatelessWidget maka harus dikasih final)
  final List<Color> mycolor = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.green
  ];
  /*
  List<Widget> myList = [ //(List of ... bisa widget kalau mau campuran bisa hanya container kalau mau container saja)
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
  ];*/
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
          body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.white,
              );
              /*return Container(//(Bisa menggunakan container atau divider)
                height: 10,
                color: Colors.black,
              );*/
            },
            itemCount: mycolor.length,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 100,
                color: mycolor[index],
              );
            },
          )

          /*ListView.builder( //(Ini adalah list builder tanpa parator/ spasi antar list)
          itemCount: mycolor.length,
          itemBuilder: (context, index) {
            return Container(
              color: mycolor[index],
              height: 300,
              width: 300,
            );
          },
          //(Untuk bisa croll(Width dan heightakan menyesuaikan ukuran layarnya))
          //scrollDirection: Axis.horizontal,
          /*children:
                myList*/ /*[ //(Ini kalau hardcore langsung tanpa variable)
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
          ],*/
        ),*/
          ),
    );
  }
}
