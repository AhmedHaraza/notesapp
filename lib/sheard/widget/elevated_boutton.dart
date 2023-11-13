import 'package:flutter/material.dart';

Widget elevatedBoutton({
  required BuildContext context,
  required void Function()? onPressed,
  required Widget? child,
  Color? backgroundColor = Colors.blue,
  Color? textColor = Colors.white,
  double radiusboirder = 5,
  double? elevation = 0.0,
}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusboirder),
        ),
        minimumSize: Size(MediaQuery.of(context).size.width, 40),
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        elevation: elevation,
      ),
      child: child,
    );
