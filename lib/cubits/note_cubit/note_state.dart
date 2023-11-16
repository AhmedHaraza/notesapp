import 'package:notesapp/model/note_model.dart';

abstract class NoteState {}

class NoteInitialState extends NoteState {}

class NoteLoadingState extends NoteState {}

class NoteSucsessState extends NoteState {
  final List<NoteMOdel> notes;
  NoteSucsessState(this.notes);
}

class NoteFuailrState extends NoteState {
  NoteFuailrState({required this.errorMessage});
  final String errorMessage;
}
