import 'package:bloc/bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  addNote() {}
}
