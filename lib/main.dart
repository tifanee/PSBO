import 'package:flutter/material.dart';
import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/pages/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';

void main() {
  runApp(const MyApp());
}

HomePage home = new HomePage();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => ToolsBloc()
            ..add(
              LoadTools(tools: [
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
                    id: "87654311",
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
              ]),
            ))
    ], child: MaterialApp(home: HomePage()));
  }
}
