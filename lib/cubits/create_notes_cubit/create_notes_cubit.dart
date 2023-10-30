import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'create_notes_state.dart';

class NotesCubit extends Cubit<CreateNotesState> {
  NotesCubit() : super(CreateNotesInitial());

List<NoteModel>? notes;
  fetchAllNotes()  {
  var notebox = Hive.box<NoteModel>(kNotesBox);
  notes = notebox.values.toList();
  emit(CreateNotesSuccess());

  }
}
