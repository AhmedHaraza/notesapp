import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/const_color.dart';

Widget customTextFormFiled({required String text, required int? maxLines}) => TextFormField(
  maxLines: maxLines ,
  cursorColor: kprimaryColor,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Text is empty';
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.cyan),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusColor: Colors.white,
        label: Text(text),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
