import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/cubits/note_cubit/note_state.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/const/const.dart';

class ShowNote extends Cubit<NoteState> {
  ShowNote() : super(NoteInitialState());

  featchAllNote() async {
    try {
      var notesBox = Hive.box<NoteMOdel>(kNoteBox);

      emit(NoteSucsessState(notesBox.values.toList()));
    } catch (e) {
      emit(NoteFuailrState(errorMessage: e.toString()));
    }
  }
}
