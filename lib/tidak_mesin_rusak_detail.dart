import 'package:flutter/material.dart';

class TidakMesinRusakDetailScreen extends StatelessWidget {
  const TidakMesinRusakDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('img/cangkul.png'))),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 300,
            child: Container(
              //width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cangkul',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textDirection: TextDirection.ltr,
                      ),
                      Container(
                        child: Row(
                            children: [Icon(Icons.edit), Icon(Icons.delete)]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('ID'), Text('0103')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Jenis Alat'), Text('xxxxx')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Merk'), Text('Crocodile')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Harga'), Text('30.000')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Dimensi'), Text('300')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Berat'), Text('2 Kg')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Sumberdaya'), Text('300')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Kapasitas'), Text('300')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Kondisi'), Text('Rusak')],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Deskripsi Kerusakan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'Kerusakan bada bagian gagang serta besi pada cangkul hancur belah dua'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rencana',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Diperbaiki')
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
