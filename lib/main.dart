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
          backgroundColor: Colors.blue,
          title: Text("Text Widget"),
        ),
        body: Center(
          child: Text(
            "Di sebuah desa kecil yang tersembunyi di antara pegunungan hijau, hiduplah seorang petani bernama Budi yang memiliki impian besar. Setiap pagi, Budi bangun lebih awal dari ayam-ayamnya dan bekerja keras di ladang kecilnya, menanam berbagai macam sayuran. Meski hidup sederhana, Budi tak pernah mengeluh. Ia selalu tersenyum, menyapa semua orang dengan ramah, dan membantu tetangganya tanpa pamrih",
            // maxLines: 2,//(untuk maxsimal line yang ditampilkan)
            // overflow: TextOverflow.ellipsis, //(untuk memberikan tanda kalau text terlalu banyak)
            textAlign: TextAlign
                .center, //(untuk meratakan text ditengah, rat kanan kiri, rata kiri/kanan)
            style: TextStyle(
              //untuk memberikan gaya/style tulisan
              backgroundColor: Colors.amber,
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // letterSpacing: 10//(Untuk memberikan jarak antar huruf),
              fontFamily:
                  'Schyler', //(buat folder fonts, lalu masukkan fontnya, lalu edit pubspec.yaml bagian fonts nya, lalu ubah asset nya dengan tempat font berada)
              decorationStyle: TextDecorationStyle
                  .wavy, //(untuk style dari decoration harus ada decoration terlebih dahulu)
              decoration: TextDecoration
                  .underline, //(Untuk memberikan decorasi pada text baik itu underlilne dan lainnya)
              decorationColor:
                  Colors.purple, //(Untuk memberikan warna pada decoration)
              decorationThickness:
                  5, //(Untuk memberikan ketebalan pada decoration)
            ),
          ),
        ),
      ),
    );
  }
}
