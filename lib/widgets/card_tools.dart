import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';
import 'package:psbo_home_dan_mesinbaik/pages/mesin_baik_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/mesin_rusak_detail_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/mesin_rusak_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/nonmesin_baik_detail_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/nonmesin_baik_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/nonmesin_rusak_screen.dart';
import 'package:psbo_home_dan_mesinbaik/pages/tidak_mesin_rusak_detail.dart';

class card_tools extends StatelessWidget {
  final ToolsModel tool;
  final BuildContext context;
  const card_tools({Key? key, required this.context, required this.tool})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            color: HexColor("#ECECEC"),
            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
          ),
          Container(
            height: 80,
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${tool.nama}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Text(
                        "${tool.kondisi}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Text("Tampilkan Detail",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: HexColor("#407BFF"))),
                  onTap: () {
                    if (tool.kondisi == "Baik" && tool.jenisAlat == "Mesin") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MesinBaik(
                                    context: context,
                                    data: tool,
                                  )));
                    } else if (tool.kondisi == "Rusak" &&
                        tool.jenisAlat == "Mesin") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MesinRusak(
                                    context: context,
                                    data: tool,
                                  )));
                    } else if (tool.kondisi == "Baik" &&
                        (tool.jenisAlat).toString() == "Tidak Mesin") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NonMesinBaik(
                                    context: context,
                                    data: tool,
                                  )));
                    } else if (tool.kondisi == "Rusak" &&
                        (tool.jenisAlat).toString() == "Tidak Mesin") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NonMesinRusak(
                                    context: context,
                                    data: tool,
                                  )));
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
