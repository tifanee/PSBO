// import 'package:flutter/material.dart';
// import 'package:psbo_home_dan_mesinbaik/pages/home_screen.dart';

// class TidakMesinRusakDetailScreen extends StatelessWidget {
//   final data;
//   const TidakMesinRusakDetailScreen({Key? key, required this.data})
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
//                       image: AssetImage('assets/images/cangkul.png'))),
//             ),
//           ),
//           Positioned(
//             top: 45,
//             left: 20,
//             right: 20,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(
//                     context, MaterialPageRoute(builder: (_) => HomePage()));
//               },
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
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
//                         'Cangkul',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(left: 250.0),
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(context,
//                                 MaterialPageRoute(builder: (_) => HomePage()));
//                           },
//                           child: Row(
//                             children: [Icon(Icons.edit)],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (_) => const HomePage()));
//                           },
//                           child: Row(
//                             children: [Icon(Icons.delete)],
//                           ),
//                         ),
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
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Jenis Alat'), Text('${data.jenisAlat}')],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Merk'), Text("${data.merk}")],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Harga'), Text("${data.harga}")],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Dimensi'), Text("${data.dimensi}")],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [Text('Berat'), Text("${data.berat}")],
//                   ),
//                   SizedBox(
//                     height: 10,
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
//                   Text(
//                       'Kerusakan bada bagian gagang serta besi pada cangkul hancur belah dua'),
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
//                       Text('Diperbaiki')
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
