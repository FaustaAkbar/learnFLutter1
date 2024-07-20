import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Text> myText = List.generate(100, (index) {
    return Text(
      "${1 + index}",
      style: TextStyle(fontSize: double.parse("${index}")),
    );
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Count number"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return myText[index];
          },
          itemCount: myText.length,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.white,
            );
          },
        ),
      ),
    );
  }
}
