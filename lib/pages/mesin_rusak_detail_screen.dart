import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/mesin.dart';
import '../enums.dart';

class MesinRusakDetailScreen extends StatelessWidget {
  const MesinRusakDetailScreen({super.key, required this.data});

  final Mesin data;

  @override
  Widget build(BuildContext context) {
    final perbaikan = listPerbaikan.firstWhere(
      (perbaikan) => perbaikan.idAlat == data.id,
    );
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
                      fit: BoxFit.cover,
                      image: AssetImage('images/traktor.png'))),
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
                        data.nama,
                        style: TextStyle(fontWeight: FontWeight.bold),
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
                    children: [Text('ID'), Text(data.id)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: data.jenis == Jenis.mesin
                        ? [Text('Jenis Alat'), Text('Bermesin')]
                        : [Text('Jenis Alat'), Text('Tidak Bermesin')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Merk'), Text(data.merk)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Harga'), Text('${data.harga}')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Dimensi'), Text('${data.dimensi}')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Berat'), Text('${data.berat}')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sumberdaya'),
                      data.sumberDaya == SumberDaya.bensin
                          ? Text('Bensin')
                          : Text('Listrik')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Kapasitas'), Text('${data.kapasitas}')],
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
                  Text(perbaikan.deskripsi),
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
                      perbaikan.rencana == Rencana.diperbaiki
                          ? Text('Diperbaiki')
                          : Text('Diganti')
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
