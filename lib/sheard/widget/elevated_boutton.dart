import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedBoutton extends StatelessWidget {
  const ElevatedBoutton({
    Key? key,
    required this.context,
    this.onPressed,
    this.child,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.radiusboirder = 5,
    this.elevation = 0.0,
    this.isloading = false,
  }) : super(key: key);
  final BuildContext context;
  final void Function()? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final Color? textColor;
  final double radiusboirder;
  final double? elevation;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: isloading
          ? SizedBox(
              width: 24.sp,
              height: 24.sp,
              child: const CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : child,
    );
  }
}
