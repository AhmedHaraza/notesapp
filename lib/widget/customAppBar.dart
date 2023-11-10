import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customAPPBar() => Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),
        const Spacer(),
        IconButton(
          constraints: const BoxC onstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 26.sp,
          ),
        )
      ],
    );
