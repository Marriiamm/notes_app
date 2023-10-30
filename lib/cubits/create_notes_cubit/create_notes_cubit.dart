import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'create_notes_state.dart';

class CreateNotesCubit extends Cubit<CreateNotesState> {
  CreateNotesCubit() : super(CreateNotesInitial());
}
