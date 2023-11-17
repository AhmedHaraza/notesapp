// ignore_for_file: file_names
import 'package:flutter/material.dart';
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snakbar(
    BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Color(0xff303030),
      content: Text(
        'Item Deleted Successfully',
        style: TextStyle(color: Colors.white),
      ),
      duration: Duration(seconds: 2),
    ),
  );
}