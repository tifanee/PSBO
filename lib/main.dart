import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:psbo_home_dan_mesinbaik/pages/home_page.dart';
import 'package:psbo_home_dan_mesinbaik/pages/mesin_baik.dart';
import 'package:psbo_home_dan_mesinbaik/pages/sec_home_page.dart';

void main() {
  runApp(const MyApp());
}

HomePage home = new HomePage();
SecHomePage sechome = new SecHomePage();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home);
  }
}
