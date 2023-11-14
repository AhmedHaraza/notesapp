// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/sheard/widget/digital_clock.dart';

Widget customAPPBar(
        {required String text,
        required Icon icon,
        required void Function()? onPressed}) =>
    Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const DigitalClock(),
        const Spacer(),
        IconButton(
            constraints: const BoxConstraints(),
            onPressed: onPressed,
            icon: icon)
      ],
    );
