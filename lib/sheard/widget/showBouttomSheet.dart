// ignore_for_file: file_names
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(top: 24, left: 16, right: 16),
      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: <Widget>[
          CustomTextFormFiled(
            text: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20.0),
          CustomTextFormFiled(
            text: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          elevatedBoutton(
              context: context,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: const Text("Add"),
              textColor: Colors.black,
              backgroundColor: const Color(0xff74ffe9)),
          const SizedBox(height: 20.0)
        ],
      ),
    );
  }
}
