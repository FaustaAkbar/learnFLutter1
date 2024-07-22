import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var number = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                setState(() {
                  number = 100;
                });
              },
              icon: Icon(Icons.account_balance_outlined)),
          title: Text("Statefull"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 20 + double.parse("$number")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      if (number != 0) {
                        setState(() {
                          number--;
                        });
                      }
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    child: Icon(Icons.traffic_sharp))
              ],
            )
          ],
        ),
      ),
    );
  }
}
