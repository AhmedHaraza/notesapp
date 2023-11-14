import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/const/const.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  bool isloading = false;
  AddNoteCubit() : super(AddNoteInitialState());
  addNote(NoteMOdel note) async {
    isloading = true;
    emit(AddNoteLoadingState());
    try {
      Box<dynamic> notesBox = Hive.box<NoteMOdel>(kNoteBox);
      isloading = false;
      emit(AddNoteSucsesstate());
      await notesBox.add(note);
    } catch (e) {
      isloading = false;
      AddNoteFailurestate(errorMessage: e.toString());
    }
  }
}
