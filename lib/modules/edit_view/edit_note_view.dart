import 'package:flutter/material.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/widget/custom_edit_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);
  final NoteMOdel note;
  @override
  Widget build(BuildContext context) {
    return EditViewBody(note: note);
  }
}
