import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
import '../pages/mesin_baik.dart';

class card_tools extends StatelessWidget {
  const card_tools(
      {Key? key,
      required this.context,
      required this.toolsName,
      required this.toolsCondition,
      required this.data})
      : super(key: key);

  final BuildContext context;
  final toolsName;
  final toolsCondition;
  final data;

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
            color: Color.fromARGB(255, 236, 236, 236), //HexColor("#ECECEC"),
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
                        toolsName,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                      Text(
                        toolsCondition,
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
                        color: Color.fromARGB(
                            255, 64, 123, 255), //HexColor("#407BFF")
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MesinBaik(
                                  data: data,
                                )));
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
