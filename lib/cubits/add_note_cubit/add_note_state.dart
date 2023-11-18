abstract class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteSucsesstate extends AddNoteState {}

class AddNoteFailurestate extends AddNoteState {
  AddNoteFailurestate({required this.errorMessage});
  final String errorMessage;
}

class ColorChangeng extends AddNoteState {}
