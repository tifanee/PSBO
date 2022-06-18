// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
// import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';

// class MesinRusakDetailScreen extends StatelessWidget {
//   final ToolsModel data;
//   final BuildContext context;

//   const MesinRusakDetailScreen(
//       {Key? key, required this.context, required this.data})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             right: 0,
//             child: Container(
//               width: double.maxFinite,
//               height: 350,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage('assets/images/traktor.png'))),
//             ),
//           ),
//           Positioned(
//             top: 45,
//             left: 20,
//             right: 20,
//             child: Row(
//               children: [
//                 Icon(
//                   Icons.arrow_back,
//                   color: Colors.white,
//                 )
//               ],
//             ),
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: 0,
//             top: 300,
//             child: Container(
//               //width: double.infinity,
//               padding: EdgeInsets.only(left: 20, right: 20, top: 20),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(30.0),
//                       topLeft: Radius.circular(30.0))),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "${data.nama}",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       Container(
//                         child: Row(children: [
//                           IconButton(icon: Icon(Icons.edit), onPressed: () {}),
//                           IconButton(
//                             icon: Icon(Icons.delete),
//                             onPressed: () {
//                               context
//                                   .read<ToolsBloc>()
//                                   .add(DeleteTool(tool: data));
//                             },
//                           )
//                         ]),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('ID'), Text('${data.id}')],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Jenis Alat'), Text('${data.jenisAlat}')],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Merk'), Text("${data.merk}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Harga'), Text("${data.harga}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Dimensi'), Text("${data.dimensi}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Berat'), Text("${data.berat}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Sumberdaya'), Text("${data.sumberDaya}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Kapasitas'), Text("${data.kapasitas}")],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Kondisi'), Text("${data.kondisi}")],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'Deskripsi Kerusakan',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('${data.deskripsiKerusakan}'),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Rencana',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       Text('diperbaiki')
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
