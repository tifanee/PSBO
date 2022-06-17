import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';
import 'package:psbo_home_dan_mesinbaik/widgets/drop_down.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

//text field widget
Widget _inputField(String field, TextEditingController controller) {
  return Container(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(5.0),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          color: Color.fromARGB(255, 127, 127, 127),
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: field,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Color.fromARGB(255, 64, 123, 255))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    ),
  );
}

class MachineOption {
  String type;
  MachineOption(this.type);
}

class SumberDaya {
  String type;
  SumberDaya(this.type);
}

class Kondisi {
  String type;
  Kondisi(this.type);
}

class Rencana {
  String type;
  Rencana(this.type);
}

class _FormScreenState extends State<FormScreen> {
  List<dynamic> machineOptions = [
    MachineOption("Mesin"),
    MachineOption("Tidak Mesin")
  ];

  List<dynamic> planOptions = [
    Rencana("diperbaiki"),
    Rencana("Tidak Diperbaiki")
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerNama = TextEditingController();
    TextEditingController controllerJenisAlat = TextEditingController();
    TextEditingController controllerMerk = TextEditingController();
    TextEditingController controllerHarga = TextEditingController();
    TextEditingController controllerDimensi = TextEditingController();
    TextEditingController controllerBerat = TextEditingController();
    TextEditingController controllerKapasitas = TextEditingController();
    TextEditingController controllerKondisi = TextEditingController();
    TextEditingController controllerSumberdaya = TextEditingController();
    TextEditingController controllerDeskripsi = TextEditingController();
    TextEditingController controllerRencana = TextEditingController();
    TextEditingController controllerTempat = TextEditingController();
    TextEditingController controllerEstimasi = TextEditingController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 123, 255),
          title: Text("Tambah Alat"),
          leading: Icon(Icons.arrow_left),
        ),
      ),
      body: BlocListener<ToolsBloc, ToolsState>(
        listener: (context, state) {
          if (state is ToolsLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Tool Added!"),
              ),
            );
          }
        },
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Color.fromARGB(255, 250, 250, 250),
              child: Column(children: [
                _inputField('Nama', controllerNama),
                _inputField('ID', controllerId),
                _inputField('Jenis Alat', controllerJenisAlat),
                _inputField('Merk', controllerMerk),
                _inputField('Harga', controllerHarga),
                _inputField('Dimensi', controllerDimensi),
                _inputField('Berat', controllerBerat),
                _inputField('Sumberdaya', controllerSumberdaya),
                _inputField('Kapasitas', controllerKapasitas),
                _inputField('Kondisi', controllerKondisi),
                _inputField('Deskripsi', controllerDeskripsi),
                _inputField('Rencana', controllerRencana),
                _inputField('Tempat Perbaikan', controllerTempat),
                _inputField('Estimasi Waktu', controllerEstimasi),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 14),
                      child: ElevatedButton(
                          onPressed: () {
                            var tool = ToolsModel(
                                nama: controllerNama.value.text,
                                id: controllerId.value.text,
                                jenisAlat: controllerJenisAlat.value.text,
                                merk: controllerMerk.value.text,
                                harga: controllerHarga.value.text,
                                dimensi: controllerDimensi.value.text,
                                berat: controllerBerat.value.text,
                                sumberDaya: controllerSumberdaya.value.text,
                                kapasitas: controllerKapasitas.value.text,
                                rencana: controllerRencana.value.text,
                                kondisi: controllerKondisi.value.text,
                                deskripsiKerusakan:
                                    controllerDeskripsi.value.text,
                                tempatPerbaikan: controllerTempat.value.text,
                                estimasiWaktu: controllerEstimasi.value.text);
                            context.read<ToolsBloc>().add(AddTool(tool: tool));
                            Navigator.pop(context);
                          },
                          child: const Text("SIMPAN")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              onPrimary: Colors.white,
                              onSurface: Colors.red,
                              shadowColor: Colors.red),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("BATAL")),
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Container DropdownMethod(String hintText, List<dynamic> data) {
    List<DropdownMenuItem>? generateItems(List<dynamic> options) {
      List<DropdownMenuItem> items = [];
      for (var item in options) {
        items.add(DropdownMenuItem(
          child: Text(item.type),
          value: item,
        ));
      }
      return items;
    }

    var selectedType;
    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: Material(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: DropdownButton<dynamic>(
            style: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 127, 127, 127)),
            hint: Text(hintText),
            value: selectedType,
            items: generateItems(data),
            onChanged: (item) {
              setState(() {
                selectedType = item;
              });
            },
            isExpanded: true,
          ),
        ),
      ),
    );
  }
}
