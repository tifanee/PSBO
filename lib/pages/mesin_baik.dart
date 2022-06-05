import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
import '../widgets/details_container.dart';

class MesinBaik extends StatefulWidget {
  final data;
  const MesinBaik({Key? key, required this.data}) : super(key: key);

  @override
  State<MesinBaik> createState() => _MesinBaikState(data: this.data);
}

class _MesinBaikState extends State<MesinBaik> {
  _MesinBaikState({this.data});
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 4 * 3,
          color: Colors.red,
        ),
        details_body(context)
      ],
    ));
  }

  Column details_body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4 * 2.6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 254, 254), //HexColor("#FEFEFE"),
              borderRadius: BorderRadius.circular(40)),
          padding: EdgeInsets.fromLTRB(20, 28, 20, 0),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${data.nama}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.edit_note_outlined,
                            size: 36,
                          ),
                          onPressed: () {}),
                      IconButton(
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          size: 36,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
              //Title End

              Container(
                margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "${data.id}",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              details_container(
                  context: context,
                  judul: "Jenis Alat",
                  value: "${data.jenisAlat}"),
              details_container(
                  context: context, judul: "Merk", value: "${data.merk}"),
              details_container(
                  context: context, judul: "Harga", value: "${data.harga}"),
              details_container(
                  context: context, judul: "Dimensi", value: "${data.dimensi}"),
              details_container(
                  context: context, judul: "Berat", value: "${data.berat}"),
              details_container(
                  context: context,
                  judul: "Sumber Daya",
                  value: "${data.sumberDaya}"),
              details_container(
                  context: context,
                  judul: "Kapasitas",
                  value: "${data.kapasitas}"),
              details_container(
                  context: context, judul: "Kondisi", value: "${data.kondisi}"),
              details_container(
                  context: context,
                  judul: "Deskripsi Kerusakan",
                  value: "----"),
              details_container(
                  context: context,
                  judul: "Deskripsi Kerusakan",
                  value: "----"),
            ],
          ),
        )
      ],
    );
  }
}
