import './alat.dart';
import '../enums.dart';

class Mesin extends Alat {
  final SumberDaya sumberDaya;
  final int kapasitas;

  Mesin({
    required super.id,
    required super.nama,
    required super.merk,
    required super.harga,
    required super.dimensi,
    required super.berat,
    required super.kondisi,
    required super.jenis,
    required this.sumberDaya,
    required this.kapasitas,
  });
}
