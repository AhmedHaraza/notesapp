import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget noteItem({required Color color}) => Container(
      padding: REdgeInsets.only(top: 10, bottom: 10, left: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
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
                    TextStyle(fontSize: 18.sp, color:Colors.white),
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
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
