import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/sheard/widget/custom_TextFormFiled.dart';
import 'package:notesapp/sheard/widget/elevated_boutton.dart';

class AddNoteBouttomSheet extends StatefulWidget {
  const AddNoteBouttomSheet({Key? key}) : super(key: key);

  @override
  State<AddNoteBouttomSheet> createState() => _AddNoteBouttomSheetState();
}

class _AddNoteBouttomSheetState extends State<AddNoteBouttomSheet> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(top: 24, left: 16, right: 16),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              customTextFormFiled(text: "Title", maxLines: 1),
              const SizedBox(height: 20.0),
              customTextFormFiled(text: "Content", maxLines: 5),
              const SizedBox(
                height: 40,
              ),
              elevatedBoutton(
                  context: context,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text("Add"),
                  textColor: Colors.black,
                  backgroundColor: const Color(0xff74ffe9)),
              const SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
