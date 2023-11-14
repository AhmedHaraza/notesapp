// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/sheard/widget/custom_formkey.dart';

class AddNoteBouttomSheet extends StatelessWidget {
  const AddNoteBouttomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: REdgeInsets.only(top: 24, left: 16, right: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailurestate) {
              // ignore: avoid_print
              print("Failed ${state.errorMessage}");
            }
            if (state is AddNoteSucsesstate) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoadingState ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
