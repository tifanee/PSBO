import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tool extends InheritedWidget {
  final String name;

  const Tool({
    Key? key,
    required Widget child,
    required this.name,
  }) : super(key: key, child: child);

  static String of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Tool>()!.name;

  @override
  bool updateShouldNotify(Tool oldWidget) => oldWidget.name != name;
}
