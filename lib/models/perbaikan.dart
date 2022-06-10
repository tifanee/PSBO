import '../enums.dart';

class Perbaikan {
  final String idAlat;
  final String deskripsi;
  final Rencana rencana;
  final String tempat;
  final int estimamsiWaktu;

  Perbaikan({
    required this.idAlat,
    required this.deskripsi,
    required this.rencana,
    required this.tempat,
    required this.estimamsiWaktu,
  });
}
