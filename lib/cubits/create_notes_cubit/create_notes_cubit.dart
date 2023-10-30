import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'create_notes_state.dart';

class CreateNotesCubit extends Cubit<CreateNotesState> {
  CreateNotesCubit() : super(CreateNotesInitial());

  fetchAllNotes()  {
    emit(CreateNotesLoading());
  try {
  var notebox = Hive.box<NoteModel>(kNotesBox);
  List<NoteModel> notes = notebox.values.toList();
  emit(CreateNotesSuccess(notes));
} catch (e) {
    emit(CreateNotesFailure(e.toString()));
}

  }
}
