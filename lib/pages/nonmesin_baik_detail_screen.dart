// import 'package:flutter/material.dart';

// class NonMesinBaikDetailScreen extends StatelessWidget {
//   final data;
//   const NonMesinBaikDetailScreen({Key? key, required this.data})
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
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       Container(
//                         child: Row(
//                             children: [Icon(Icons.edit), Icon(Icons.delete)]),
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
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
