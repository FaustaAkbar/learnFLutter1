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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<ListTile> myTile = List.generate(myColor.length, (index) {
      return ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text("Fausta Akbarrrr"),
        subtitle: Text(
          "Lorem ipisum don shit amet..",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text("10:0${index}"),
        leading: CircleAvatar(),
        tileColor: myColor[index],
        // dense: true,
        /*  onTap: () {
          
        }, */
      );
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: ListView(children: myTile),
      ),
    );
  }
}
