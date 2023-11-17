import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/modules/notes_view/notes_view_body.dart';
import 'package:notesapp/sheard/helper/snakBar.dart';
import 'package:notesapp/sheard/widget/customAppBar.dart';
import 'package:notesapp/sheard/widget/custom_TextFormFiled.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
  final NoteMOdel note;
  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subTitle;
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
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subTitle ?? widget.note.subTitle;
                  widget.note.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const NotesView();
                      },
                    ),
                  );
                  snakbar(context,'Item Update Successfully');
                },
              ),
              SizedBox(height: 20.h),
              CustomTextFormFiled(
                onChanged: (value) {
                  title = value;
                },
                text: "New Title",
                maxLines: 1,
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 20.0),
              CustomTextFormFiled(
                onChanged: (value) {
                  subTitle = value;
                },
                text: "new Content",
                maxLines: 5,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
