import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ButtonState { idle, loading, disable }

class Button extends StatefulWidget {
  final String? title;
  final TextStyle? titleStyle;
  final ButtonState state;
  final Widget? LeadingIcon;
  final List<Color>? color;
  final Function()? onTap;

  const Button({
    Key? key,
    required this.title,
    this.titleStyle,
    this.state = ButtonState.idle,
    this.LeadingIcon,
    this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 64, 123, 255),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ));
  }
}
