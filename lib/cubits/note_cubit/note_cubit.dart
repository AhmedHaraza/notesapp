import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/note_cubit/note_state.dart';

class ShowNote extends Cubit<NoteState> {
  ShowNote() : super(NoteInitialState());
}
