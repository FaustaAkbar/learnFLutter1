import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> myList = [
    Tab(
      text: "Tab 1",
    ),
    Tab(
      text: "Tab 2",
    )
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          initialIndex: 1,
          length: myList.length,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(200),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: myList,
                    unselectedLabelColor: Colors.yellow,
                    splashBorderRadius: BorderRadius.circular(20),
                    indicatorColor: const Color.fromARGB(255, 0, 0, 0),
                    indicator: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 5),
                        /* Border(
                            bottom: BorderSide(color: Colors.black, width: 5)), */
                        borderRadius: BorderRadius.circular(20)),
                  )),
            ),
            body: TabBarView(children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  height: 200,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite)),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.blue,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.black,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.blue,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text("This is tab Number two"),
              ),
            ]),
          )),
    );
  }
}
