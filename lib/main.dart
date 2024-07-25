import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            backgroundColor: Colors.blue,
            title: Text("Date"),
          ),
          body: Center(
            child: Text(
              DateFormat.yMMMMEEEEd().add_jms().format(DateTime.now()),
            ),
          ),
        ));
  }
}
