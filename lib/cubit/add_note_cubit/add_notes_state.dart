part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoading extends AddNotesState {}

final class AddNotesSucces extends AddNotesState {}

final class AddNotesFaliuer extends AddNotesState {
  final String erromessage;

  AddNotesFaliuer(this.erromessage);
}
