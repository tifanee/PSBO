import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../models/tools_model.dart';
import '../widgets/card_tools.dart';
import '../pages/mesin_baik.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final data = [
    ToolsModel(
        nama: "Gebetan",
        id: "12345678",
        jenisAlat: "Mesin",
        merk: "suzuki",
        harga: "12.500.000",
        dimensi: "102",
        berat: "1 ton",
        sumberDaya: "biodiesel",
        kapasitas: "2 ton",
        kondisi: "Baik",
        deskripsiKerusakan: "Tidak ada baut pengencang roda"),
    ToolsModel(
        nama: "Penebar Pestisida",
        id: "87654321",
        jenisAlat: "Mesin",
        merk: "Yamahal",
        harga: "12.500.000",
        dimensi: "110",
        berat: "0.5 ton",
        sumberDaya: "biodiesel",
        kapasitas: "1 ton",
        kondisi: "Baik",
        deskripsiKerusakan: "Tidak ada baut pengencang roda"),
    ToolsModel(
        nama: "Penebar Pupuk",
        id: "87654322",
        jenisAlat: "Mesin",
        merk: "Yamahal",
        harga: "12.500.000",
        dimensi: "110",
        berat: "0.5 ton",
        sumberDaya: "biodiesel",
        kapasitas: "1 ton",
        kondisi: "Baik",
        deskripsiKerusakan: "Tidak ada baut pengencang roda")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FAFAFA"),
      appBar: BarApp("Manajemen Peralatan Tani"),
      floatingActionButton: buildNavigateButton(),
      body: Container(
          child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) {
          return card_tools(
            context: context,
            toolsName: "${data[i].nama}",
            toolsCondition: "${data[i].kondisi}",
            data: data[i],
          );
        },
      )),
    );
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
