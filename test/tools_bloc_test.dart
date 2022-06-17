import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';

void main() {
  group("Testing Tools Bloc", () {
    blocTest("Menambahkan Alat",
        build: () => ToolsBloc(),
        act: (ToolsBloc bloc) async => bloc.add(
              AddTool(
                tool: ToolsModel(
                    nama: 'alat1',
                    id: '12345678',
                    jenisAlat: 'Mesin',
                    merk: 'Honda2',
                    harga: '45.000.000',
                    dimensi: '200',
                    berat: '0.3',
                    sumberDaya: 'biodiesel',
                    kapasitas: '3 ton',
                    kondisi: 'Rusak',
                    deskripsiKerusakan: 'Tidak ada baut',
                    tempatPerbaikan: 'Bubulak',
                    rencana: 'Diperbaiki',
                    estimasiWaktu: '14 hari'),
              ),
            ),
        expect: () => [
              // ToolsInitital(),
              // ToolsLoading(),
              ToolsLoaded(tools: [
                ToolsModel(
                    nama: 'alat1',
                    id: '12345678',
                    jenisAlat: 'Mesin',
                    merk: 'Honda2',
                    harga: '45.000.000',
                    dimensi: '200',
                    berat: '0.3',
                    sumberDaya: 'biodiesel',
                    kapasitas: '3 ton',
                    kondisi: 'Rusak',
                    deskripsiKerusakan: 'Tidak ada baut',
                    tempatPerbaikan: 'Bubulak',
                    rencana: 'Diperbaiki',
                    estimasiWaktu: '14 hari'),
              ])
            ]);
  });
}
