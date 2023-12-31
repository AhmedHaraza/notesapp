import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/sheard/widget/customAppBar.dart';
import 'package:notesapp/sheard/widget/note_list_view_builder.dart';
import 'package:notesapp/sheard/widget/showBouttomSheet.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<ShowNote>(context).featchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              customAPPBar(
                  text: "Notes",
                  icon: const Icon(Icons.search),
                  onPressed: () {}),
              const Expanded(child: NoteListViewBuilder()),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteBouttomSheet();
              },
            );
          },
          child: Icon(
            Icons.add,
            size: 30.sp,
          )),
    );
  }
}
