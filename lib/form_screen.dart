import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

//text field widget
Widget _TextFieldWidget({String? hintText, int? maxLines}) {
  return Container(
    padding: EdgeInsets.only(bottom: 8.0),
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(5.0),
      child: TextField(
        maxLines: maxLines,
        style: TextStyle(
          color: Color.fromARGB(255, 127, 127, 127),
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
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

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 123, 255),
          title: Text("Tambah Alat"),
          leading: Icon(Icons.arrow_left),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            color: Color.fromARGB(255, 250, 250, 250),
            child: Column(children: [
              _TextFieldWidget(hintText: 'Nama Alat'),
              _TextFieldWidget(hintText: 'Merk'),
              _TextFieldWidget(hintText: 'Harga (Rp)'),
              _TextFieldWidget(hintText: 'Panjang (cm)'),
              _TextFieldWidget(hintText: 'Lebar (cm)'),
              _TextFieldWidget(hintText: 'Berat (kg)'),
              _TextFieldWidget(hintText: 'Kapasitas mesin (watt/cc)'),
              _TextFieldWidget(
                  hintText: 'Deskripsi Kerusakan (maks. 200 kata', maxLines: 5),
              _TextFieldWidget(hintText: 'Tempat Perbaikan'),
              _TextFieldWidget(hintText: 'Estimasi waktu perbaikan (hari)'),
            ]),
          )
        ],
      ),
    );
  }
}
