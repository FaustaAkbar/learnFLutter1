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
          backgroundColor: Colors.blue,
          title: Text("Text Field"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false, // untuk autocorret pada text saat di space
              autofocus:
                  false, // untuk langsung mengisi pada textField tanpa klick terlebih dahulu
              enableSuggestions: true, //untuk memberikan Sugestion
              enableInteractiveSelection:
                  false, // Agar bisa copy/paste pada textField
              enabled: false, //untuk memunculkan atau menyembunyikan field
              obscureText:
                  true, // agar text yang kita tulis menjadi karakter/(seperti input password)
              obscuringCharacter: "*", //karakter bisa di ganti- ganti
              keyboardType: TextInputType
                  .number, //untuk memunculkan berbagai layout keyboard
              readOnly:
                  false, //hanya bisa melihat text field tidak bisa mengetik
            ),
          ),
        ),
      ),
    );
  }
}
