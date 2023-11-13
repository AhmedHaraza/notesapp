import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/views/notes_view_body.dart';
import 'package:notesapp/widget/customAppBar.dart';
import 'package:notesapp/widget/custom_TextFormFiled.dart';

class EditView extends StatelessWidget {
  const EditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: REdgeInsets.only(top: 12, left: 8, right: 8),
          child: Column(
            children: <Widget>[
              customAPPBar(
                  text: "Edit Note",
                  icon: const Icon(Icons.done),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NotesView();
                    }));
                  }),
              SizedBox(height: 20.h),
              customTextFormFiled(text: "Title", maxLines: 1),
              const SizedBox(height: 20.0),
              customTextFormFiled(text: "Content", maxLines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
