import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';
import 'package:psbo_home_dan_mesinbaik/widgets/details_container.dart';

class MesinBaik extends StatefulWidget {
  final ToolsModel data;
  final BuildContext context;
  const MesinBaik({Key? key, required this.context, required this.data})
      : super(key: key);

  @override
  State<MesinBaik> createState() =>
      _MesinBaikState(context: context, data: this.data);
}

class _MesinBaikState extends State<MesinBaik> {
  _MesinBaikState({required this.context, required this.data});
  BuildContext context;
  ToolsModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/traktor.png'))),
        ),
        details_body(context, data)
      ],
    ));
  }

  Column details_body(BuildContext context, ToolsModel tool) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4 * 2.6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: HexColor("#FEFEFE"),
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
                        onPressed: () {
                          AlertDialog(
                            title: Text(
                                "Apakah anda yakin untuk menghapus alat ini?"),
                            actions: <Widget>[
                              TextButton(
                                child: Text("YA"),
                                onPressed: () {
                                  context
                                      .read<ToolsBloc>()
                                      .add(DeleteTool(tool: data));
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(child: Text("BATAL"), onPressed: () {})
                            ],
                          );
                        },
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
            ],
          ),
        )
      ],
    );
  }
}
