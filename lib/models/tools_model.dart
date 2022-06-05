class ToolsModel {
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
      required this.deskripsiKerusakan});

  String getName() => nama;
}
