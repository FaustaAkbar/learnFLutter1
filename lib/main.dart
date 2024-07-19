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
          title: Text("List View sparated"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return Text("hallo");
          },
        ),
      ),
    );
  }
}
