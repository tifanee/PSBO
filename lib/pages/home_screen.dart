import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/blocs/tools/tools_bloc.dart';
import 'package:psbo_home_dan_mesinbaik/models/condition.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';
import 'package:psbo_home_dan_mesinbaik/pages/form_screen.dart';
import 'package:psbo_home_dan_mesinbaik/widgets/card_tools.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FAFAFA"),
      appBar: BarApp("Manajemen Peralatan Tani"),
      floatingActionButton: buildNavigateButton(),
      body: BlocBuilder<ToolsBloc, ToolsState>(builder: (context, state) {
        if (state is ToolsLoading) {
          return const CircularProgressIndicator();
        }
        if (state is ToolsLoaded) {
          return Container(
              child: ListView.builder(
            itemCount: state.tools.length,
            itemBuilder: (BuildContext context, int i) {
              return card_tools(
                context: context,
                tool: state.tools[i],
              );
            },
          ));
        } else {
          return const Text("Error");
        }
      }),
    );
  }

  AppBar BarApp(title) {
    return AppBar(
      backgroundColor: HexColor("#407BFF"),
      title: Text(title),
      actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  Widget buildNavigateButton() => FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
      );
}
