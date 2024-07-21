import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.brown,
    Colors.purple
  ];
  List<ListTile> myTile() {
    return List.generate(myColor.length, (index) {
      return ListTile(
        title: Text("Fausta Akbar"),
        subtitle: Text("Lorem ipisum don shit amet.."),
        trailing: Text("10:0${index}"),
        leading: CircleAvatar(),
        tileColor: myColor[index],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: ListView(children: myTile()),
      ),
    );
  }
}
