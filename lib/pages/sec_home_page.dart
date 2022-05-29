import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:psbo_home_dan_mesinbaik/widgets/card_tools.dart';
import 'package:psbo_home_dan_mesinbaik/pages/mesin_baik.dart';

class SecHomePage extends StatefulWidget {
  const SecHomePage({Key? key}) : super(key: key);
  @override
  State<SecHomePage> createState() => _SecHomePageState();
}

class _SecHomePageState extends State<SecHomePage> {
  final data = [
    {"name": "Ramadhan", "id": "1234", "Salary": "1234"},
    {"name": "Ramadhan", "id": "1234", "Salary": "1234"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#FAFAFA"),
        appBar: BarApp("Manajemen Peralatan Tani"),
        floatingActionButton: buildNavigateButton(),
        body: Container(
            margin: EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.delete),
                      title: Text(data[i]["name"].toString()),
                      subtitle: Text("Minal Aidzin"),
                      isThreeLine: true,
                    ),
                  );
                })));
  }

  AppBar BarApp(title) {
    return AppBar(
      backgroundColor: HexColor("#407BFF"),
      title: Text(title),
      actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  Widget buildNavigateButton() => FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      );
}
