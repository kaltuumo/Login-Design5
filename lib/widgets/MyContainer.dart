import 'package:flutter/material.dart';
import 'package:login_design5/utilities/constants/sizes.dart';

class Mycontainer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;

  final Widget child;
  const Mycontainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,

    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSize.sidesPadding,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.green,

          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(child: child),
      ),
    );
  }
}
