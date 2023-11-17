import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/cubits/note_cubit/note_state.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/const/const.dart';

class ShowNote extends Cubit<NoteState> {
  ShowNote() : super(NoteInitialState());
  List<NoteMOdel> notes = [];
  void featchAllNote() {
    try {
      var notesBox = Hive.box<NoteMOdel>(kNoteBox);
      notes = notesBox.values.toList();
      emit(NoteSucsessState(notes));
      debugPrint("notes $notes");
    } catch (e) {
      emit(NoteFuailrState(errorMessage: e.toString()));
    }
  }
}