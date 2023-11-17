// ignore_for_file: file_names
import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snakbar(
    BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xff303030),
      content: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}
