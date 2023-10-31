import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color =const Color(0xff64CCC5);

addNote (NoteModel note) async{
  note.color = color.value;
  emit(AddNoteLoading());
  try {
  var notebox = Hive.box<NoteModel>(kNotesBox);
  await notebox.add(note);
  emit(AddNoteSuccess());
} catch (e) {
    emit(AddNoteFailure(e.toString()));
}


  }
}
