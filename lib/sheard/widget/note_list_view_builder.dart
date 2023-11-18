import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/cubits/note_cubit/note_state.dart';
import 'package:notesapp/sheard/const/const.dart';
import 'package:notesapp/sheard/widget/note_itme.dart';

class NoteListViewBuilder extends StatelessWidget {
  const NoteListViewBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNote, NoteState>(
      builder: (context, state) {
        if (state is NoteSucsessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: REdgeInsets.symmetric(vertical: 8.0),
                child: NoteItme(
                  note: state.notes[index],
                  color: kcolors[index],
                ),
              );
            },
          );
        } else if (state is NoteFuailrState) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Container();
        }
      },
    );
  }
}
