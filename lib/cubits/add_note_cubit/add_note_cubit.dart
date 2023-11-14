import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/const/const.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  addNote(NoteMOdel note) async {
    emit(AddNoteLoadingState());
    try {
      Box<dynamic> notesBox = Hive.box<NoteMOdel>(kNoteBox);
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailurestate(errorMessage: e.toString());
    }
  }
}
