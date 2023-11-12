import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/widget/customAppBar.dart';
import 'package:notesapp/widget/note_list_view_builder.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              customAPPBar(),
              Expanded(child: noteListView()),
            ],
          ),
        ),
      ),
    );
  }
}
