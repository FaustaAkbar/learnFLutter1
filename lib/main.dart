import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool password = true;
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
            child: Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Login Form",
                      style: TextStyle(
                          fontFamily: "SchylerS", fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      cursorColor: Colors.yellow, //mewarnai kursor "|"
                      cursorWidth: 10, // Tebal kursor
                      cursorHeight: 30, //panjang kursor
                      cursorRadius: Radius.circular(5), //pinggiran kursor
                      textAlign: TextAlign
                          .start, //awal mula mengetik dari kanan kiri ataupun tengah
                      textAlignVertical: TextAlignVertical
                          .bottom, //untuk mengatur teks agar berada ditengah textfield atas ataupun bawah (Namun Tidak memberikan efek signifikan)
                      textCapitalization: TextCapitalization
                          .sentences, //Untuk mengubah menjadi huruf besar semua atau semacam mya
                      style: TextStyle(
                          color: Colors.red, fontSize: 20), //Warna text
                      decoration: InputDecoration(
                        //Untuk memberi dekorasi Bisa icon dan lainnya (Letaknya di samping kiri luar textField)
                        icon: Icon(
                          Icons.person,
                          size: 30,
                        ),
                        border:
                            OutlineInputBorder(), //Untuk memberi border (Note: Tidak bisa memberi warna di sini)
                        focusedBorder: OutlineInputBorder(
                            //warna border ketika textField di kilik
                            borderSide:
                                BorderSide(color: Colors.yellow.shade400)),
                        enabledBorder: OutlineInputBorder(
                            //warna border textField
                            borderSide:
                                BorderSide(color: Colors.yellow.shade50)),
                        prefixIcon: Icon(
                          //Memberi icon di kiri dalam textField
                          Icons.group,
                          size: 30,
                        ),
                        prefixText:
                            "Name:", //Memberi string di kiri dalam textField ketika di klik
                        hintText:
                            "input name", //memberikan text saat sebelum mengetik
                        labelText:
                            "Full Name", //Text pada textField sebelum di klik(setelah di kilik pindah ke atas)
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      obscureText: password,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            size: 30,
                          ),
                          label: Icon(Icons.face),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          suffix: IconButton(
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
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("SUBMIT"),
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    )
                  ],
                ))),
      ),
    );
  }
}
