import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/note_cubit/note_cubit.dart';
import 'package:notesapp/cubits/note_cubit/note_state.dart';
import 'package:notesapp/sheard/widget/note_itme.dart';

class NoteListViewBuilder extends StatelessWidget {
  const NoteListViewBuilder({Key? key}) : super(key: key);
  final color = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.cyan,
    Colors.teal,
    Colors.indigo,
    Colors.deepPurple,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNote, NoteState>(
      builder: (context, state) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state is NoteSucsessState ? state.notes.length : 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: REdgeInsets.symmetric(vertical: 8.0),
              child: NoteItme(color: color[index]),
            );
          },
        );
      },
    );
  }
}
