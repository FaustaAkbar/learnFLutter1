import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontFamily: "Schyler"),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 600,
            width: 300,
            color: Colors.orange,
            child: Image.asset(
              //Lebih Ringkas dalam penulisan
              "images/ui.png",
              fit: BoxFit.cover,
            ),
            /* child: Image(//Lebih lambat
              image: AssetImage("images/ui.png"),
              width: 300,
              height: 600,
              fit: BoxFit.cover,
            ), */
            // child: Image.network("https://picsum.photos/300/600"),
          ),
        ),
      ),
    );
  }
}
