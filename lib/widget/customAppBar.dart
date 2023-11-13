import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customAPPBar({required String text, required Icon icon,required void Function()? onPressed}) => Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),
        const Spacer(),
        IconButton(
          constraints: const BoxConstraints(),
          onPressed: onPressed,
          icon: icon
        )
      ],
    );
