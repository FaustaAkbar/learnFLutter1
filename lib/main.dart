import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = "";
  String data1 = "";
  String data2 = "";

  bool password = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Login",
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  onEditingComplete: () {
                    setState(() {
                      data2 = "Complete";
                    });
                  },
                  obscureText: password,
                  onSubmitted: (value) {
                    setState(() {
                      data = value;
                    });
                    print("Halo1");
                  },
                  onChanged: (value) => setState(() {
                    data1 = value;
                    print(data1);
                  }),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (password == true) {
                                password = false;
                              } else {
                                password = true;
                              }
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined))),
                ),
                Text(data),
                Text(data1),
                Text(data2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
