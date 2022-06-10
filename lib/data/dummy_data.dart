import '../enums.dart';
import '../models/nonmesin.dart';
import '../models/mesin.dart';
import '../models/perbaikan.dart';

final tools = [
  Mesin(
    id: 'id1',
    nama: 'mesin 1',
    merk: 'honda',
    harga: 19000,
    dimensi: 10,
    berat: 20,
    jenis: Jenis.mesin,
    kondisi: Kondisi.baik,
    sumberDaya: SumberDaya.listrik,
    kapasitas: 1000,
  ),
  Mesin(
    id: 'id2',
    nama: 'mesin 2',
    merk: 'suzuki',
    harga: 10000,
    dimensi: 5,
    berat: 40,
    jenis: Jenis.mesin,
    kondisi: Kondisi.baik,
    sumberDaya: SumberDaya.listrik,
    kapasitas: 150,
  ),
  Mesin(
    id: 'id3',
    nama: 'mesin 3',
    merk: 'Yamaha',
    harga: 50000,
    dimensi: 4,
    berat: 100,
    kondisi: Kondisi.rusak,
    jenis: Jenis.mesin,
    sumberDaya: SumberDaya.bensin,
    kapasitas: 100,
  ),
  NonMesin(
    id: 'nm1',
    nama: 'non mesin 1',
    merk: 'merk 4',
    harga: 150000,
    dimensi: 102,
    berat: 48,
    kondisi: Kondisi.baik,
    jenis: Jenis.nommesin,
  ),
  NonMesin(
    id: 'nm2',
    nama: 'non mesin 2',
    merk: 'merk 5',
    harga: 20000,
    dimensi: 9,
    berat: 18,
    kondisi: Kondisi.rusak,
    jenis: Jenis.nommesin,
  )
];

final listPerbaikan = [
  Perbaikan(
    idAlat: 'id3',
    deskripsi: 'perlu diperbaiki segera',
    rencana: Rencana.diganti,
    tempat: 'Bogor',
    estimamsiWaktu: 10,
  ),
  Perbaikan(
    idAlat: 'nm2',
    deskripsi:
        'Kerusakan bada bagian gagang serta besi pada cangkul hancur belah dua',
    rencana: Rencana.diperbaiki,
    tempat: 'Depok',
    estimamsiWaktu: 2,
  ),
];
