import '../enums.dart';

abstract class Alat {
  final String id;
  final String nama;
  final String merk;
  final double harga;
  final double dimensi;
  final double berat;
  final Jenis jenis;
  final Kondisi kondisi;

  Alat({
    required this.id,
    required this.nama,
    required this.merk,
    required this.harga,
    required this.dimensi,
    required this.berat,
    required this.kondisi,
    required this.jenis,
  });
}
