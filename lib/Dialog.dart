import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String tampil = "Belum Ada Input";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {
                tampil = "Sudah ada input";
              });
            },
            icon: Icon(Icons.input)),
        title: Text("Dialog"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Text(tampil),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              //Fungsi memunculkan dialog
              context: context, //harus ada
              builder: (context) {
                //harus ada
                return AlertDialog(
                  //mengembalikan alert dialog
                  title: Text(
                    "Confirm Delete",
                    style: TextStyle(color: Colors.red),
                  ),
                  content: Text("Are you sure to delete this item?"), //subtitle
                  actions: [
                    TextButton(
                        //button txt
                        onPressed: () {
                          setState(() {
                            tampil = "Order Confirm";
                          });
                          Navigator.of(context).pop(
                              true); //agar ketika button di klik alert dialong hilang(dan mengembalikan nilai true, jika perlu)
                        },
                        child: Text("Yes")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            tampil = "Order Canceled";
                          });
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"))
                  ],
                );
              }).then((value) => print(value)); //menerima inputan dari pop
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //lokasi floating action button
    );
  }
}
