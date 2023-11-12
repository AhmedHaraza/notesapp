import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget noteItem() => Container(
      padding: REdgeInsets.only(top: 10, bottom: 10, left: 10),
      decoration: const BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Flutter Tips",
              style: TextStyle(fontSize: 26.sp, color: Colors.black),
            ),
            subtitle: Padding(
              padding: REdgeInsets.only(top: 14),
              child: Text(
                "Build Your Career With Ahmed Haraza",
                style:
                    TextStyle(fontSize: 18.sp, color: const Color(0xffb58949)),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26.sp,
                )),
          ),
          Padding(
            padding: REdgeInsets.only(right: 16),
            child: const Text(
              "Novamber12 , 2023",
              style: TextStyle(color: Color(0xffb58949)),
            ),
          )
        ],
      ),
    );
