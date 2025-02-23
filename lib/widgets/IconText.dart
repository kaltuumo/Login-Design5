import 'package:flutter/material.dart';
import 'package:login_design5/widgets/BoldText.dart';

class Icontext extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double textSize;
  final Color? iconColor;
  final Color? textColor;
  final String text;

  const Icontext({
    super.key,
    this.iconColor = Colors.black,
    this.iconSize = 10,
    this.textSize = 14,
    this.textColor = Colors.black,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: iconSize),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Boldtext(text: text, size: textSize, color: textColor),
        ),
      ],
    );
  }
}
