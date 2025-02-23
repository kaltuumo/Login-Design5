import 'package:flutter/material.dart';
import 'package:login_design5/utilities/constants/colors.dart';

import 'package:login_design5/widgets/IconText.dart';

class Customtextfield extends StatelessWidget {
  final String title;
  final IconData icon;
  final double radius;
  const Customtextfield({
    super.key,
    required this.title,
    required this.icon,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Icontext(icon: icon, text: title, iconSize: 20, textSize: 15),

        fillColor: AppColors.greyColors,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColors.greyColors),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: AppColors.greenColors),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),

          borderSide: BorderSide(
            color: AppColors.whiteColors,
          ), // White border color when not focused
        ),
      ),
    );
  }
}
