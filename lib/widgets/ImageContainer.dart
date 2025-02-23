import 'package:flutter/material.dart';
import 'package:login_design5/utilities/constants/colors.dart';
import 'package:login_design5/widgets/BoldText.dart';

class Imagecontainer extends StatelessWidget {
  final double width;
  final double height;
  final List<String> imagePath;
  const Imagecontainer({
    super.key,
    required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.whiteColors,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyColors),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (String imagePath in imagePath)
            Image.asset(imagePath, width: 30, height: 50),
          const SizedBox(width: 5),
          Boldtext(text: "Facebook", color: AppColors.greenColors),
        ],
      ),
    );
  }
}
