import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> myTab = [
    Tab(
      text: "Tab 1",
      icon: Icon(Icons.favorite),
    ),
    Tab(
      icon: Icon(Icons.stacked_bar_chart),
    ),
    Tab(
      text: "Tab 3",
    ),
    Tab(
      child: Text(
        "Tab 4",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 3, //Untuk Tab ke berapa yang mau terbuka dahulu
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.blue,
              title: Text("Haiiii"),
              bottom: PreferredSize(
                  // untuk Membuat bootom
                  preferredSize: Size.fromHeight(100),
                  child: /* DefaultTabController( // Bisa menggunakan ini tanpa membungkus Scaffold
                  length: 3,
                  child: TabBar(tabs: [
                    Tab(
                      text: "Tab 1",
                      icon: Icon(Icons.favorite),
                    ),
                    Tab(
                      text: "Tab 2",
                    ),
                    Tab(
                      text: "Tab 3",
                    ),
                  ]),
                ), */
                      TabBar(
                    unselectedLabelColor:
                        Colors.white, //warna saat tidak di pilih
                    labelColor: Colors.black, //warna ketika dipilih
                    unselectedLabelStyle: TextStyle(
                        fontFamily:
                            "Schyler"), //style font ketika tidak dipilih
                    tabs: myTab,
                    indicatorSize: TabBarIndicatorSize
                        .tab, //supaya bisa full tab(bukan mengikuti ukuran chid)
                    // indicatorColor: Colors.yellow,
                    // indicatorWeight: 5,
                    // indicatorPadding: EdgeInsets.all(10),
                    indicator: BoxDecoration(
                        border: Border.all(
                            color: Colors.blue, width: 1 //Untuk lebar border
                            ),
                        color: Colors.white, //warna tab dalam
                        shape: BoxShape.rectangle, //Bentuk tab(Kotak,Bulat)
                        borderRadius:
                            BorderRadius.circular(10) //Untuk ukuran Lengkungan
                        ),
                  ))),
          body: TabBarView(children: [
            Center(child: Text("Content for Tab 1")),
            Center(child: Text("Content for Tab 2")),
            Center(child: Text("Content for Tab 3")),
            Center(child: Text("Content for Tab 4")),
          ]),
        ),
      ),
    );
  }
}
