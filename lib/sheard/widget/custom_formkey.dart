import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/sheard/widget/custom_TextFormFiled.dart';
import 'package:notesapp/sheard/widget/elevated_boutton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: <Widget>[
          CustomTextFormFiled(
            text: "Title",
            maxLines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20.0),
          CustomTextFormFiled(
            text: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return ElevatedBoutton(
                  isloading: state is AddNoteLoadingState ? true : false,
                  context: context,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var curentDate = DateTime.now();
                      var formatedCurenetDate = DateFormat.yMd().format(curentDate);
                      var noteModel = NoteMOdel(
                          title: title!,
                          subTitle: subTitle!,
                          date: formatedCurenetDate,
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  textColor: Colors.black,
                  backgroundColor: const Color(0xff74ffe9),
                  child: const Text("Add"));
            },
          ),
          const SizedBox(height: 20.0)
        ],
      ),
    );
  }
}
