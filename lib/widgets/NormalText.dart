import 'package:flutter/material.dart';

class Normaltext extends StatelessWidget {
  final String text;
  final String font;
  final double size;
  final TextOverflow textOverflow;
  final Color? color;
  final TextAlign? textAlign;

  const Normaltext({
    super.key,
    this.color,
    this.textAlign,
    this.size = 15,
    this.font = "font30",
    this.textOverflow = TextOverflow.visible,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      textAlign: textAlign,

      text,

      style: TextStyle(fontFamily: font, color: color, fontSize: size),
    );
  }
}
