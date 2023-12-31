import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/modules/edit_view/edit_note_view.dart';

class NoteItme extends StatelessWidget {
  const NoteItme({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteMOdel note;
  @override
  Widget build(BuildContext context) {
    var notes = BlocProvider.of<ShowNote>(context).notes;
    if (notes.isEmpty) {
      debugPrint("No notes $notes");
      return const Center(child: Text("Notes Is Empty Please Add New Note"));
    } else {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView(note: note);
          }));
        },
        child: Container(
          padding: REdgeInsets.only(top: 10, bottom: 10, left: 10),
          decoration: BoxDecoration(
            color: BlocProvider.of<AddNoteCubit>(context,listen: true).color,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 26.sp, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: REdgeInsets.only(top: 14),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<ShowNote>(context).featchAllNote();
                      snakbar(context);
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 26.sp,
                    )),
              ),
              Padding(
                padding: REdgeInsets.only(right: 16),
                child: Text(
                  note.date,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snakbar(
      BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Color(0xff303030),
        content: Text(
          'Item Deleted Successfully',
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
