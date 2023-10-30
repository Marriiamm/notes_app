part of 'create_notes_cubit.dart';

@immutable
abstract class CreateNotesState {}

class CreateNotesInitial extends CreateNotesState {}

class CreateNotesLoading extends CreateNotesState {}

class CreateNotesSuccess extends CreateNotesState {
  final List <NoteModel> notes;

  CreateNotesSuccess(this.notes);
}

class CreateNotesFailure extends CreateNotesState {

  final String errMesssage;

  CreateNotesFailure(this.errMesssage);
}
