import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/widget/note_itme.dart';

Widget noteListView() => ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 8.0),
      child: noteItem(),
    );
  },
);
