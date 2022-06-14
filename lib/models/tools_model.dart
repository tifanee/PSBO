import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:psbo_home_dan_mesinbaik/models/condition.dart';

class ToolsModel extends Equatable {
  String nama;
  String id;
  String jenisAlat;
  String merk;
  String harga;
  String dimensi;
  String berat;
  String sumberDaya;
  String kapasitas;
  String kondisi;
  String deskripsiKerusakan;
  String rencana;
  String tempatPerbaikan;
  String estimasiWaktu;

  ToolsModel(
      {required this.nama,
      required this.id,
      required this.jenisAlat,
      required this.merk,
      required this.harga,
      required this.dimensi,
      required this.berat,
      required this.sumberDaya,
      required this.kapasitas,
      required this.kondisi,
      required this.deskripsiKerusakan,
      required this.tempatPerbaikan,
      required this.rencana,
      required this.estimasiWaktu});

  ToolsModel copyWith(
      {String? nama,
      String? id,
      String? jenisAlat,
      String? merk,
      String? harga,
      String? dimensi,
      String? berat,
      String? sumberDaya,
      String? kapasitas,
      String? kondisi,
      String? deskripsiKerusakan,
      String? rencana,
      String? tempatPerbaikan,
      String? estimasiWaktu}) {
    return ToolsModel(
        nama: nama ?? this.nama,
        id: id ?? this.id,
        jenisAlat: jenisAlat ?? this.jenisAlat,
        merk: merk ?? this.merk,
        harga: harga ?? this.harga,
        dimensi: dimensi ?? this.dimensi,
        berat: berat ?? this.berat,
        sumberDaya: sumberDaya ?? this.sumberDaya,
        kapasitas: kapasitas ?? this.kapasitas,
        kondisi: kondisi ?? this.kondisi,
        deskripsiKerusakan: deskripsiKerusakan ?? this.deskripsiKerusakan,
        rencana: rencana ?? this.rencana,
        tempatPerbaikan: tempatPerbaikan ?? this.tempatPerbaikan,
        estimasiWaktu: estimasiWaktu ?? this.estimasiWaktu);
  }

  @override
  List<Object> get props => [
        nama,
        id,
        jenisAlat,
        merk,
        harga,
        dimensi,
        berat,
        sumberDaya,
        kapasitas,
        kondisi,
        deskripsiKerusakan,
        rencana,
        tempatPerbaikan,
        estimasiWaktu,
      ];

  static List<ToolsModel> tools = [
    ToolsModel(
        nama: "Traktor",
        id: "12345678",
        jenisAlat: "Mesin",
        merk: "suzuki",
        harga: "12.500.000",
        dimensi: "102",
        berat: "1 ton",
        sumberDaya: "biodiesel",
        kapasitas: "2 ton",
        kondisi: "Baik",
        deskripsiKerusakan: "Tidak ada baut pengencang roda",
        rencana: "-",
        tempatPerbaikan: "-",
        estimasiWaktu: "-"),
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
        kondisi: "Rusak",
        deskripsiKerusakan: "Tidak ada baut pengencang roda",
        rencana: "Diperbaiki",
        tempatPerbaikan: "Bubulak",
        estimasiWaktu: "12 hari"),
    ToolsModel(
        nama: "Penebar Pupuk",
        id: "87654322",
        jenisAlat: "Tidak Mesin",
        merk: "Yamahal",
        harga: "12.500.000",
        dimensi: "110",
        berat: "0.5 ton",
        sumberDaya: "biodiesel",
        kapasitas: "1 ton",
        kondisi: "Baik",
        deskripsiKerusakan: "Tidak ada baut pengencang roda",
        rencana: "-",
        tempatPerbaikan: "-",
        estimasiWaktu: "-"),
    ToolsModel(
        nama: "Pacul",
        id: "87654322",
        jenisAlat: "Tidak Mesin",
        merk: "Yamahal",
        harga: "12.500.000",
        dimensi: "110",
        berat: "0.5 ton",
        sumberDaya: "biodiesel",
        kapasitas: "1 ton",
        kondisi: "Rusak",
        deskripsiKerusakan: "Tidak ada baut pengencang roda",
        rencana: "Diganti",
        tempatPerbaikan: "Rancaupas",
        estimasiWaktu: "12 hari"),
  ];
}
