import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Faker faker = new Faker();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "extrack widget",
            style: TextStyle(fontFamily: "Fausta", fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
            );
          },
          itemCount: 20,
          itemBuilder: (context, index) => list(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
              icon: "https://picsum.photos/id/$index/200/300",
              trailing: "$index"),
        ),
      ),
    );
  }
}

class list extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final String trailing;
  list(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.trailing});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(icon),
      ),
      subtitle: Text(
        subtitle +
            "jsegirjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      title: Text(title),
      trailing: Text(trailing),
    );
  }
}
