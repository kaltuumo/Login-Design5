import 'package:flutter/material.dart';

class Boldtext extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign? align;
  final TextOverflow textOverflow;
  final String font;
  final Color? color;

  const Boldtext({
    super.key,
    this.color,
    this.size = 20,
    this.font = "font30",
    this.textOverflow = TextOverflow.ellipsis,
    this.align,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      textAlign: align,
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: font,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
