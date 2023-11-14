// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/sheard/styles/const_color.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({Key? key,required this.text, required this.maxLines, this.onSaved}) : super(key: key);
  final int maxLines;
  final String text;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
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
  }
}
